# Przegląd redakcyjny przekładu — 16 listopada 2026

## Zakres i metoda

Przejrzano strukturę wszystkich plików `chapters/*.md` (przedmowa oraz rozdziały I–XVII), sprawdzono nagłówki, identyfikatory przypisów i odsyłacze, a także wyszukano proste anomalie zapisu i markery robocze. Wykonano dodatkowy przegląd wybranych fragmentów każdego rozdziału, ze szczególną uwagą na naturalność polszczyzny, spójność nazw i interpunkcję. Miejsca dotyczące wierności cytatu porównywano z dostępnym angielskim tekstem źródłowym książki H. C. G. Moule'a, *Charles Simeon* (1892).

**Granica kontroli:** ten przegląd nie oznacza nowej, niezależnej weryfikacji każdego zdania ze wszystkimi obrazami stron skanu. Nie zastępuje wcześniejszych zestawień w `REVIEW.md` i `postep/`. Tekst OCR może zawierać błędy, dlatego wątpliwe warianty wymagają kontroli obrazu oryginału.

## Potwierdzone korekty

| Plik | Przed zmianą | Po zmianie | Powód |
| --- | --- | --- | --- |
| `chapters/01-przedmowa.md` | „Wiele wdzięczności winien jestem…” | „Serdecznie dziękuję…” | Usunięcie kalki składniowej. |
| `chapters/01-przedmowa.md` | „Wielu osobom winien jestem szczególne podziękowanie…” | „Wielu osobom jestem winien szczególne podziękowania…” | Poprawna składnia. |
| `chapters/02-rozdzial-01-rodzina-i-szkola.md` | „Simeon … «pomyślał, że … to byłem nim ja»” | „Simeon wspominał: «Pomyślałem, że … to byłem nim ja»” | Usunięcie mieszania osób gramatycznych. |
| `chapters/14-rozdzial-13.md` | „Mój drogi Panie Simeonie, Mój brat…” | „Mój drogi Panie Simeonie, mój brat…” | Mała litera wewnątrz zdania. |

Zachowano zakres informacji, układ rozdziałów, nazwiska, daty, przypisy, cytaty greckie i składnię Markdown.

## Kontrola integralności całej książki

- 18 plików (przedmowa i 17 rozdziałów), w prawidłowej kolejności.
- Około 465 tys. znaków tekstu wraz ze znacznikami Markdown.
- 125 unikalnych definicji przypisów i 125 odsyłaczy; bez brakujących, powtórzonych ani osieroconych identyfikatorów.
- Nie znaleziono markerów TODO/FIXME/TBD w widocznej treści rozdziałów.
- Dodano `tests/translation-integrity.test.mjs`, uruchamiany przez istniejące `make test`.

## Kontrole wymagane przed scaleniem

W tej sesji nie było możliwe lokalne wykonanie `make pdf`, `make book` ani obejrzenie zmienionych stron PDF-u na gotowym składzie. Pliki `build/` i `docs/index.html` nie zostały przebudowane i mogą pokazywać starsze brzmienie. Przed scaleniem:

1. Wykonać `make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf`, `make book`, `make test` i `git diff --check`.
2. Obejrzeć zmienione strony wygenerowanego PDF-u.
3. Dodać odświeżone PDF, EPUB, DOCX i HTML do tej samej gałęzi PR-a.
4. Dla pełnego wydawniczego poświadczenia wierności ponownie porównać cały przekład ze skanem, strona po stronie.

Dotychczasowe szczegółowe raporty kontroli skanu i składu pozostają w `REVIEW.md` oraz `postep/`.
