# Charles Simeon — przekład polski

Repozytorium do tłumaczenia książki **Charles Simeon** autorstwa **H. C. G. Moule’a** (Handley Carr Glyn Moule). Tekst jest opracowywany po polsku w Markdownie Pandoca, po jednym pliku na część książki.

**Status: cały przekład i kontrola eksportów ukończone.** Przedmowa, nota i rozdziały I–XVII przeszły niezależne porównanie ze skanem. PDF ma 176 stron, wszystkie objęto kontrolą wizualną, a EPUB, HTML i DOCX sprawdzono technicznie. Repozytorium GitHub: [tometchy/Simeon](https://github.com/tometchy/Simeon). Aktualny stan opisuje [POSTEP.md](POSTEP.md), a zakres książki — [PLAN-TLUMACZENIA.md](PLAN-TLUMACZENIA.md).

Gotowe pliki: [PDF](build/pdf/Charles-Simeon-H-C-G-Moule.pdf), [EPUB](build/epub/Charles-Simeon-H-C-G-Moule.epub), [DOCX](build/docx/Charles-Simeon-H-C-G-Moule.docx), [HTML](docs/index.html).

## Oryginał

- Tytuł: *Charles Simeon*.
- Autor na stronie tytułowej: H. C. G. Moule, M.A.
- Wydawca: Methuen & Co., London, 1892.
- Seria: *English Leaders of Religion*.
- Plik źródłowy: [charlessimeon00moulgoog.pdf](charlessimeon00moulgoog.pdf), 321 stron PDF.

Skan zawiera powtórzone strony początkowe. Przedmowa jest na stronach PDF **24–26** (duplikat: **16–18**), nota po przedmowie na stronie **27** (duplikat: **19**), a spis treści na stronie **28** (duplikat: **20**). Pierwszy rozdział zaczyna się na stronie PDF **30**, oznaczonej w druku jako strona **1**. Numery stron PDF liczymy od 1.

Większość skanu nie ma warstwy tekstowej. Przy tłumaczeniu korzystaj z obrazu stron, a ewentualny OCR sprawdzaj ze skanem, szczególnie przy nazwiskach, datach, kursywie i przypisach.

## Rozpoczęcie pracy

1. Najpierw przeczytaj [POSTEP.md](POSTEP.md) i sprawdź `git status --short`, aby wznowić przerwaną pracę bez pominięć ani powtórzeń. Pierwszy rozdział znajduje się w [chapters/02-rozdzial-01-rodzina-i-szkola.md](chapters/02-rozdzial-01-rodzina-i-szkola.md), a przedmowa wraz z notą w [chapters/01-przedmowa.md](chapters/01-przedmowa.md).
2. Tłumacz kolejne akapity, zastępując komentarz o statusie, gdy część będzie gotowa. Zasady pracy opisuje [AGENTS.md](AGENTS.md), a ustalone nazwy i terminy zapisuj w [TERMINOLOGIA.md](TERMINOLOGIA.md).
3. Dodawaj dalsze pliki według [PLAN-TLUMACZENIA.md](PLAN-TLUMACZENIA.md). Kolejność eksportu wynika z nazw plików, np. `03-rozdzial-02.md`, `04-rozdzial-03.md`.
4. Po zmianach uruchom `make pdf`, a przed PR-em zaktualizuj wszystkie formaty przez `make book`. Zmienione eksporty dołącz do tego samego commita co Markdown.

Uwagi redakcyjne zapisuj w [REVIEW.md](REVIEW.md). Nie umieszczaj instrukcji roboczych w widocznym tekście książki. W razie potrzeby używaj komentarzy HTML `<!-- ... -->`, pomijanych w eksportach.

Praca musi nadawać się do wznowienia po nagłym wyczerpaniu limitu tokenów: zapisuj tekst najpóźniej po 1–2 stronach źródła, a potem aktualizuj [POSTEP.md](POSTEP.md), podając dokładny koniec przekładu i pozostałe kontrole. Nie polegaj wyłącznie na historii rozmowy. Pełne zasady są w sekcji „Odporność na przerwanie i wznawianie” pliku [AGENTS.md](AGENTS.md).

## Struktura

```text
chapters/                         tłumaczenie w kolejności eksportu
images/                           ilustracje i ewentualna przyszła okładka
metadata.yml                      dane polskiego przekładu i wydania źródłowego
templates/                        szablony PDF, EPUB, HTML i DOCX
filters/                          filtry Pandoca do tabel i podziałów wierszy
build/pdf/                        PDF polskiego przekładu
build/epub/                       EPUB polskiego przekładu
build/docx/                       DOCX polskiego przekładu
docs/index.html                   HTML polskiego przekładu
docs/compare.html                 porównywarka angielskiego i polskiego PDF-u
tests/                            testy porównywarki
.github/workflows/build.yml       automatyczne testy i eksporty
charlessimeon00moulgoog.pdf        oryginalny skan
```

## Wymagania

Na Ubuntu / Debianie:

```bash
sudo apt-get update
sudo apt-get install --no-install-recommends -y \
  make pandoc fonts-dejavu-core lmodern texlive-fonts-recommended \
  texlive-lang-polish texlive-plain-generic texlive-xetex
```

Do lokalnego podglądu przez HTTP potrzebny jest Python 3, a do uruchomienia testów porównywarki Node.js z obsługą `node --test` (np. Node.js 22).

## Generowanie plików

```bash
make pdf     # build/pdf/Charles-Simeon-H-C-G-Moule.pdf
make epub    # build/epub/Charles-Simeon-H-C-G-Moule.epub
make docx    # build/docx/Charles-Simeon-H-C-G-Moule.docx
make html    # docs/index.html
make book    # wszystkie cztery formaty; także domyślne make i make all
make test    # testy porównywarki PDF
```

Nazwę wynikową ustawia `OUTPUT_FILENAME` w `Makefile`. Dane książki znajdują się w `metadata.yml`. Rok 1892 i wydawca Methuen & Co. opisują oryginał, a nie polskie wydanie.

Eksport EPUB działa bez okładki. Aby dodać własną, zapisz ją jako `images/cover.png` i odkomentuj `cover-image` w `metadata.yml`.

`make clean` usuwa eksporty z `build/` i `docs/index.html`. Nie usuwa skanu ani Markdownu.

Opcjonalnie można zbudować wszystkie formaty w kontenerze poleceniem `./generate.sh` (wymaga Podmana). W środowisku Codex używaj bezpośrednio `make pdf` i `make book`.

## Podgląd i porównywanie

Uruchom serwer z głównego katalogu repozytorium:

```bash
python3 -m http.server 8000
```

- Książka HTML: <http://localhost:8000/docs/>.
- Porównywarka PDF: <http://localhost:8000/docs/compare.html>.

Porównywarka otwiera skan angielski oraz wygenerowany polski PDF. Zakreślenia i ustawienia tej książki są przechowywane oddzielnie. Opcjonalna synchronizacja z GitHub wymaga osobnego repozytorium danych i tokenu podanego w ustawieniach porównywarki. Domyślna proponowana nazwa to `simeon-compare-data`, samo przygotowanie projektu nie tworzy tego repozytorium.

Po opublikowaniu katalogu `docs/` przez GitHub Pages porównywarka pobiera PDF-y z domyślnej gałęzi tego samego repozytorium. Lokalne zmiany oglądaj przez lokalny serwer.

## Publikacja w GitHub Pages

Repozytorium `tometchy/Simeon` jest przygotowane do publikacji katalogu `docs/`:

1. Otwórz [Settings → Pages](https://github.com/tometchy/Simeon/settings/pages).
2. W **Build and deployment → Source** wybierz **Deploy from a branch**.
3. Wybierz gałąź **master**, katalog **/docs** i kliknij **Save**.
4. Poczekaj na zakończenie wdrożenia **pages build and deployment** w zakładce **Actions**.

Po pomyślnym wdrożeniu książka będzie dostępna pod adresem <https://tometchy.github.io/Simeon/>, a porównywarka pod <https://tometchy.github.io/Simeon/compare.html>.

Porównywarka na tym adresie pobiera:

- angielski oryginał: <https://raw.githubusercontent.com/tometchy/Simeon/HEAD/charlessimeon00moulgoog.pdf> (321 stron),
- polski przekład: <https://raw.githubusercontent.com/tometchy/Simeon/HEAD/build/pdf/Charles-Simeon-H-C-G-Moule.pdf> (176 stron).

Nie trzeba kopiować PDF-ów do `docs/`. Repozytorium musi być publiczne, aby przeglądarka mogła pobrać te pliki bez logowania. Po zmianach przekładu uruchom `make book` i zatwierdź eksporty wraz z Markdownem na gałęzi `master` (np. przez scalenie PR-a). Aktualizacja `docs/` uruchomi ponowne wdrożenie Pages. Workflow `Build book` sprawdza i generuje pliki jako artefakt, ale sam ich nie publikuje ani nie zapisuje w repozytorium.

Instrukcja GitHub: [konfiguracja źródła publikacji Pages](https://docs.github.com/en/pages/getting-started-with-github-pages/configuring-a-publishing-source-for-your-github-pages-site).

## Kontrola przed pull requestem

```bash
make pdf
test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf
make book
make test
git diff --check
git status --short
```

Sprawdź wizualnie zmienione strony PDF-u. W commicie uwzględnij Markdown, metadane lub szablony oraz zmienione eksporty. Workflow GitHub Actions sprawdza testy, buduje wszystkie formaty i udostępnia je jako artefakt `charles-simeon`.

## Zasady udostępniania

Zasady udostępniania polskiego tłumaczenia pozostają do ustalenia przed publikacją. Repozytorium nie przypisuje przekładowi licencji automatycznie. Plik `docs/vendor/pdfjs/LICENSE` dotyczy dołączonej biblioteki PDF.js.
