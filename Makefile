SHELL := /bin/bash
.SHELLFLAGS := -e -o pipefail -c
.DELETE_ON_ERROR:
.DEFAULT_GOAL := book

BUILD = build
OUTPUT_FILENAME = Charles-Simeon-H-C-G-Moule
METADATA = metadata.yml
CHAPTERS = $(sort $(wildcard chapters/*.md))
IMAGES = $(shell find images -type f ! -name .gitkeep)
TEMPLATES = $(wildcard templates/*)
FILTERS = $(wildcard filters/*.lua)
COVER_IMAGE = $(wildcard images/cover.png)

PANDOC_COMMAND = pandoc
INPUT_FORMAT = --from=markdown-smart
TOC = --toc --toc-depth 3
FILTER_ARGS = --lua-filter filters/line-breaks.lua --lua-filter filters/table-layout.lua
ARGS = $(INPUT_FORMAT) $(TOC) --metadata-file $(METADATA) $(FILTER_ARGS)
CONTENT = awk 'FNR==1 && NR!=1 {print "\n\n"}{print}' $(CHAPTERS)

PDF_ARGS = --template templates/pdf.latex --pdf-engine xelatex
EPUB_ARGS = --template templates/epub.html $(if $(COVER_IMAGE),--epub-cover-image $(COVER_IMAGE))
HTML_ARGS = --template templates/html.html --standalone --to html5
DOCX_ARGS = --standalone --reference-doc templates/docx.docx
BASE_DEPENDENCIES = Makefile $(CHAPTERS) $(METADATA) $(IMAGES) $(TEMPLATES) $(FILTERS)

.PHONY: all book clean pdf epub html docx test

all: book
book: pdf epub html docx
pdf: $(BUILD)/pdf/$(OUTPUT_FILENAME).pdf
epub: $(BUILD)/epub/$(OUTPUT_FILENAME).epub
html: docs/index.html
docx: $(BUILD)/docx/$(OUTPUT_FILENAME).docx

$(BUILD)/pdf/$(OUTPUT_FILENAME).pdf: $(BASE_DEPENDENCIES)
	mkdir -p $(BUILD)/pdf
	$(CONTENT) | $(PANDOC_COMMAND) $(ARGS) $(PDF_ARGS) -o $@

$(BUILD)/epub/$(OUTPUT_FILENAME).epub: $(BASE_DEPENDENCIES)
	mkdir -p $(BUILD)/epub
	$(CONTENT) | $(PANDOC_COMMAND) $(ARGS) $(EPUB_ARGS) -o $@

docs/index.html: $(BASE_DEPENDENCIES)
	mkdir -p docs/images
	$(CONTENT) | $(PANDOC_COMMAND) $(ARGS) $(HTML_ARGS) -o $@
	cp -R images/. docs/images/

$(BUILD)/docx/$(OUTPUT_FILENAME).docx: $(BASE_DEPENDENCIES)
	mkdir -p $(BUILD)/docx
	$(CONTENT) | $(PANDOC_COMMAND) $(ARGS) $(DOCX_ARGS) -o $@

test:
	node --test tests/*.test.mjs

clean:
	rm -rf $(BUILD)
	rm -f docs/index.html
