# Charles Simeon — przekład polski

## Uwaga: Przekład na chwilę obecną wyłącznie zrobiony przez AI

Repozytorium do tłumaczenia książki **Charles Simeon** autorstwa **H. C. G. Moule’a** (Handley Carr Glyn Moule). Tekst jest opracowywany po polsku w Markdownie Pandoca, po jednym pliku na część książki.

**Status: cały przekład i kontrola eksportów ukończone.** Przedmowa, nota i rozdziały I–XVII przeszły niezależne porównanie ze skanem. PDF ma 176 stron, wszystkie objęto kontrolą wizualną, a EPUB, HTML i DOCX sprawdzono technicznie. Repozytorium GitHub: [tometchy/Simeon](https://github.com/tometchy/Simeon). Aktualny stan opisuje [POSTEP.md](POSTEP.md), a zakres książki — [PLAN-TLUMACZENIA.md](PLAN-TLUMACZENIA.md).

Aktualne wydania: [PDF](https://tometchy.github.io/Simeon/build/pdf/Charles-Simeon-H-C-G-Moule.pdf), [EPUB](https://tometchy.github.io/Simeon/build/epub/Charles-Simeon-H-C-G-Moule.epub), [DOCX](https://tometchy.github.io/Simeon/build/docx/Charles-Simeon-H-C-G-Moule.docx), [HTML](https://tometchy.github.io/Simeon/), [porównywarka PDF](https://tometchy.github.io/Simeon/compare.html).

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
4. Zmiany tekstu i szablonów zgłaszaj przez PR do `master`. GitHub Actions sprawdzi porównywarkę oraz zbuduje wszystkie formaty; po merge opublikuje je przez GitHub Pages. Nie commituj wygenerowanych eksportów.

Uwagi redakcyjne zapisuj w [REVIEW.md](REVIEW.md). Nie umieszczaj instrukcji roboczych w widocznym tekście książki. W razie potrzeby używaj komentarzy HTML `<!-- ... -->`, pomijanych w eksportach.

Praca musi nadawać się do wznowienia po nagłym wyczerpaniu limitu tokenów: zapisuj tekst najpóźniej po 1–2 stronach źródła, a potem aktualizuj [POSTEP.md](POSTEP.md), podając dokładny koniec przekładu i pozostałe kontrole. Nie polegaj wyłącznie na historii rozmowy. Pełne zasady są w sekcji „Odporność na przerwanie i wznawianie” pliku [AGENTS.md](AGENTS.md).

## Struktura

```text
chapters/                         tłumaczenie w kolejności eksportu
images/                           ilustracje i ewentualna przyszła okładka
metadata.yml                      dane polskiego przekładu i wydania źródłowego
templates/                        szablony PDF, EPUB, HTML i DOCX
filters/                          filtry Pandoca do tabel i podziałów wierszy
build/pdf/                        lokalny, generowany PDF (ignorowany przez Git)
build/epub/                       lokalny, generowany EPUB (ignorowany przez Git)
build/docx/                       lokalny, generowany DOCX (ignorowany przez Git)
docs/index.html                   generowany HTML (ignorowany przez Git)
compare-config.json               konfiguracja wspólnej porównywarki
docs/compare.html                 generowana porównywarka PDF (ignorowana przez Git)
.github/workflows/build.yml       testy, budowanie i publikacja GitHub Pages
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
make compare # wygeneruj porównywarkę PDF (po make pdf)
make test    # wspólne testy porównywarki PDF
```

Nazwę wynikową ustawia `OUTPUT_FILENAME` w `Makefile`. Dane książki znajdują się w `metadata.yml`. Rok 1892 i wydawca Methuen & Co. opisują oryginał, a nie polskie wydanie.

Eksport EPUB działa bez okładki. Aby dodać własną, zapisz ją jako `images/cover.png` i odkomentuj `cover-image` w `metadata.yml`.

`make clean` usuwa eksporty z `build/` i `docs/index.html`. Nie usuwa skanu ani Markdownu.

Opcjonalnie można zbudować wszystkie formaty lokalnie lub w kontenerze (`./generate.sh`, wymaga Podmana). Jest to niezależne od automatycznego buildu i publikacji po merge.

## Podgląd i porównywanie

Po `make pdf` uruchom `make compare`, a następnie serwer z głównego katalogu repozytorium:

```bash
python3 -m http.server 8000
```

- Książka HTML: <http://localhost:8000/docs/>.
- Porównywarka PDF: <http://localhost:8000/docs/compare.html>.

Porównywarka otwiera skan angielski oraz wygenerowany polski PDF. Zakreślenia i ustawienia tej książki są przechowywane oddzielnie. Opcjonalna synchronizacja z GitHub wymaga osobnego repozytorium danych i tokenu podanego w ustawieniach porównywarki. Domyślna proponowana nazwa to `simeon-compare-data`, samo przygotowanie projektu nie tworzy tego repozytorium.

Po wdrożeniu przez GitHub Pages porównywarka pobiera oryginał z `master`, a polski PDF z aktualnego wydania na Pages. Lokalne zmiany oglądaj przez lokalny serwer.

Kod porównywarki, PDF.js i testy są utrzymywane w [tometchy/pdf-compare](https://github.com/tometchy/pdf-compare). Lokalny `compare-config.json` określa wyłącznie adresy PDF, tytuł, dotychczasową przestrzeń danych przeglądarki i domyślne repozytorium synchronizacji. Nie zmieniaj przestrzeni danych ani nie zapisuj tokenów w konfiguracji. GitHub Actions pobiera najnowszą gałąź `main` przy każdym buildzie i dodatkowo co 6 godzin (harmonogram może mieć opóźnienia); publikację można też uruchomić ręcznie. `make compare` generuje lokalną porównywarkę, a `make test` pobiera i uruchamia wspólne testy.

## Automatyczna publikacja przez GitHub Actions

Workflow [`.github/workflows/build.yml`](.github/workflows/build.yml)
uruchamia wspólne testy oraz buduje cztery formaty
(`make -B all`) dla każdego PR do `master`. Po merge do `master`
publikuje PDF, EPUB, DOCX i HTML w jednym wdrożeniu GitHub Pages.
Wszystko działa na darmowym standardowym runnerze Ubuntu w publicznym repozytorium.

Jednorazowa konfiguracja: [Settings → Pages](https://github.com/tometchy/Simeon/settings/pages)
→ Build and deployment → Source: **GitHub Actions** (nie „Deploy from a branch”).
Status buildów i publikacji jest dostępny w [Actions](https://github.com/tometchy/Simeon/actions).
Nie jest potrzebny token PAT ani prawo bota do pushowania do chronionego `master`.

- [Książka HTML](https://tometchy.github.io/Simeon/)
- [PDF](https://tometchy.github.io/Simeon/build/pdf/Charles-Simeon-H-C-G-Moule.pdf)
- [EPUB](https://tometchy.github.io/Simeon/build/epub/Charles-Simeon-H-C-G-Moule.epub)
- [DOCX](https://tometchy.github.io/Simeon/build/docx/Charles-Simeon-H-C-G-Moule.docx)
- [Porównywarka PDF](https://tometchy.github.io/Simeon/compare.html)

Porównywarka pobiera oryginalny skan z
[repozytorium](https://github.com/tometchy/Simeon/blob/master/charlessimeon00moulgoog.pdf),
a wygenerowany polski PDF z tego samego wdrożenia GitHub Pages.
Zakreślenia zapisuje w IndexedDB; zachowuje migrację dotychczasowych zakreśleń
z lokalnej pamięci przeglądarki i opcjonalną synchronizację z osobnym
repozytorium GitHub (`simeon-compare-data`).

Pliki `build/`, `docs/build/` i generowany `docs/index.html` są ignorowane
przez Git. Nadal można je wytwarzać lokalnie za pomocą `make all`,
ale nie należy dołączać ich do PR; **aktualne wydania pobieraj z Pages**.
Artefakty każdej kompilacji są też dostępne w Actions przez 7 dni.

## Kontrola zmian

Wprowadzaj poprawki do Markdownu, szablonów i kodu przez PR. Na własnym komputerze
nie trzeba uruchamiać Pandoca ani XeLaTeX: kontrolę `make test`, `make -B all`
i weryfikację struktur PDF/EPUB/DOCX/HTML wykonuje GitHub Actions.
Warto zweryfikować wizualnie skład PDF po zmianach typograficznych.

## Zasady udostępniania

Zasady udostępniania polskiego tłumaczenia pozostają do ustalenia przed publikacją. Repozytorium nie przypisuje przekładowi licencji automatycznie. Generowany plik `docs/vendor/pdfjs/LICENSE` dotyczy biblioteki PDF.js.
