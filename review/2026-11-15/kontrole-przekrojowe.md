# Kontrole przekrojowe

Baza: `94ebe926811ef1322dd4dcfddb3c954fbf20e177`. Kontrola tekstu i struktury Markdown, bez ponownego składu eksportów.

## Przypisy i komplet plików

Znaleziono 18 plików: przedmowa/nota i 17 rozdziałów. 125 unikalnych definicji przypisów, 125 odsyłaczy.

| Plik | Definicje | Odsyłacze |
| --- | ---: | ---: |
| `chapters/01-przedmowa.md` | 0 | 0 |
| `chapters/02-rozdzial-01-rodzina-i-szkola.md` | 4 | 4 |
| `chapters/03-rozdzial-02.md` | 6 | 6 |
| `chapters/04-rozdzial-03.md` | 9 | 9 |
| `chapters/05-rozdzial-04.md` | 6 | 6 |
| `chapters/06-rozdzial-05.md` | 9 | 9 |
| `chapters/07-rozdzial-06.md` | 8 | 8 |
| `chapters/08-rozdzial-07.md` | 11 | 11 |
| `chapters/09-rozdzial-08.md` | 6 | 6 |
| `chapters/10-rozdzial-09.md` | 14 | 14 |
| `chapters/11-rozdzial-10.md` | 7 | 7 |
| `chapters/12-rozdzial-11.md` | 5 | 5 |
| `chapters/13-rozdzial-12.md` | 1 | 1 |
| `chapters/14-rozdzial-13.md` | 10 | 10 |
| `chapters/15-rozdzial-14.md` | 5 | 5 |
| `chapters/16-rozdzial-15.md` | 17 | 17 |
| `chapters/17-rozdzial-16.md` | 3 | 3 |
| `chapters/18-rozdzial-17.md` | 4 | 4 |

Wynik automatyczny:

```json
{
  "duplicate_definitions": {},
  "missing_definitions": [],
  "unused_definitions": [],
  "cross_chapter_definitions": []
}
```

Brak powtórzonych identyfikatorów, brakujących lub osieroconych definicji i odsyłaczy do przypisów zdefiniowanych wyłącznie w innym rozdziale. To kontrola powiązań, nie samodzielny dowód wierności treści przypisów — tę sprawdzono w raportach rozdziałów.

## Stan źródła i eksportów

Porównanie Git względem bazy dla `chapters/`, `build/`, `docs/` i źródłowego PDF: kod 0, brak zmian.
Nie uruchamiano `make pdf` ani `make book`: review nie zmienia treści książki ani eksportów. Nie wykonywano ponownego przeglądu wizualnego wszystkich 176 stron polskiego PDF-u; poprzedni taki przegląd opisują historyczne raporty w `postep/`. Nie wykonywano testu porównywarki, jej kod nie był zmieniany.

## Spójność terminologiczna

### T-01 — P3 — Canon Carus w IX

- Miejsce: `chapters/10-rozdzial-09.md:103`, przypis `martyn-carus-smierc`; PDF176 / druk147, „Canon Carus”.
- PL: „śmiercią Canona Carusa”. Glosariusz i liczne równoległe wzmianki przyjmują „kanonik Carus”.
- Propozycja: „śmiercią kanonika Carusa”. Pewność: wysoka, odstępstwo od istniejącego ustalenia, bez zmiany tożsamości osoby. Nie wdrożono.

### T-02 — P3 — Archdeacon/archidiakon

- Miejsce: `chapters/09-rozdzial-08.md:53`, przypis `indie-pratt-zalozenie-cms`; PDF147 / druk118, „Archdeacon Pratt”.
- PL: „archidiakona Pratta”, podczas gdy w XIII (linia97) i XVI (linia39) oraz w glosariuszu pozostaje angielskie „Archdeacon”.
- Uwaga: oba warianty trzeba uzgodnić. Nie przesądza to o błędzie merytorycznym polskiego tytułu. Dla zgodności z bieżącym glosariuszem proponuję „Archdeacona Pratta”. Nie narzucam nowego polskiego odpowiednika. Nie wdrożono.

Empory/galerie opisano jako IV-01, bez ponownego liczenia tej samej uwagi. Nie znaleziono skrótu NT w tekście przekładu. Nie zmieniono nierozstrzygniętych historycznych urzędów. Nazwy ksiąg Starego Testamentu, dla których wcześniejsze REVIEW.md nie ustaliło podstawy w Biblii Toruńskiej, nadal nie są nowym zatwierdzonym ustaleniem tego review.

## Parsowanie Markdown

Wspólny tekst wszystkich plików przetworzono przez `pandoc --from=markdown-smart --to=json`: kod0, brak ostrzeżeń, 125 węzłów przypisów (`Note`), 18 nagłówków (`Header`). Potwierdza to poprawne rozpoznanie przypisów przez parser używany do eksportów. Nie generowano nowych plików książki.

## Weryfikacja końcowa raportów — 2026-11-17

- Obecnych18 raportów części (przedmowa/nota i17 rozdziałów), wszystkie z zakończonym zakresem.
- Indeks liczy21 aktywnych uwag:10P2 i11P3. XV-03 wycofana, IX-Z1 jako problem oryginału nie powiększa liczby błędów przekładu.
- Lokalne linki raportów i dokumentacji rozwiązują się do istniejących plików.
- Ponowne porównanie Git potwierdza brak zmian książki, skanu i eksportów.
- `git diff --check` bez błędów. Końcowy staged diff zostaje sprawdzony także bezpośrednio przed lokalnym commitem.
