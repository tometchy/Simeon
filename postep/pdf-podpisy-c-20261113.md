# Przegląd PDF po powiązaniu podpisów — C

- Data: 2026-11-13.
- Agent: `01a1d430-d2ab-7b02-b70f-2e51c59a3c16`, własny ostatni `turn_context`: `gpt-6-astra` / `ultra`.
- Plik: `build/pdf/Charles-Simeon-H-C-G-Moule.pdf`.
- SHA256: `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7`.
- Zakres: strony PDF 159–176 (18 stron).
- Tryb: wyłącznie kontrola wizualna eksportu; bez zmiany książki, eksportów i wspólnych plików.
- Metoda: render `pdftoppm -scale-to 1500 -png`, oględziny każdej strony, ze szczególną uwagą na marginesy, obcięcia, kolizje, przypisy i końcową inskrypcję z kapitalikami.
- Rendery: `/tmp/simeon-qa-20261113/c/`.
- Początek kontroli: 2026-11-13T09:16:17+00:00.

## Stan

Renderowanie zakończone. Obejrzano osobno wszystkie strony 159–176 w rozdzielczości 1500 px wysokości (18 z 18). Inskrypcję na s. 176 sprawdzono dodatkowo w powiększeniu z renderu o wysokości 3000 px. Kontrola tego zakresu zakończona.

| Strony PDF | Wynik oględzin |
| --- | --- |
| 159–160 | Marginesy, ciągłość akapitów i numeracja poprawne; przypisy 115–117 na s. 160 czytelne, bez kolizji z tekstem ani stopką. |
| 161–162 | Nagłówek rozdziału XVI poprawnie oddzielony i połączony z następującym tekstem. Przypisy 118–119 czytelne, bez kolizji. Nie widać obcięć ani brakujących znaków. |
| 163–164 | Podpis „C. Simeon” na s. 163 znajduje się przy końcu listu na tej samej stronie. Przypis 120 czytelny; brak kolizji i obcięć, ciągłość cytatu między stronami prawidłowa. |
| 165–166 | Formuła końcowa i podpis na s. 165 pozostają przy liście. Przypis 121, kursywa łacińska na s. 166, marginesy i numeracja prawidłowe. |
| 167–168 | Pełne kolumny tekstu mieszczą się w marginesach. Nagłówek XVII i tekst poniżej poprawnie oddzielone; brak kolizji i obcięć. |
| 169–170 | Kontynuacje akapitów i cytatów prawidłowe, kursywa czytelna. Przypis 122 na s. 170 nie koliduje z treścią ani stopką. |
| 171–172 | Przypis 123, wyróżnienia kursywą i wielokropki czytelne, bez obcięć lub kolizji. |
| 173–174 | Przypis 124 czytelny. Cytat poetycki na s. 174 zachowuje osobne wersy, mieści się w całości na stronie i w marginesach. Brak widocznych usterek. |
| 175–176 | Tekst i ostatni przypis 125 mieszczą się w marginesach, brak kolizji. Inskrypcja kompletna na jednej stronie, kapitaliki i polskie znaki prawidłowe, także w dodatkowym powiększeniu. Końcowy odsyłacz „1 Kor. 2, 2.” czytelny; numer strony oddzielony od przypisu. |

## Wynik końcowy

- Obejrzano wszystkie 18 stron przydzielonego zakresu, PDF 159–176.
- Nie wykryto usterek składu wymagających poprawki: bez przekroczeń marginesów, obcięć, nakładania tekstu, brakujących glifów ani samotnych podpisów.
- Podpisy listów na PDF 163 i 165 znajdują się razem z poprzedzającymi zakończeniami listów.
- Przypisy 115–125 czytelne i poprawnie oddzielone od tekstu oraz numerów stron.
- Końcową inskrypcję na PDF 176 obejrzano w całości i dodatkowo w powiększeniu. Kapitaliki, wersy, polskie znaki i zakończenie są czytelne, bez kolizji.
- `pdfinfo`: 176 stron. SHA256 sprawdzony ponownie na zakończenie: `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7` (zgodny z początkiem kontroli).
- Nie zmieniano przekładu, PDF-u ani wspólnych plików. Nie regenerowano eksportów i nie tworzono commita ani PR-a. Ten raport dokumentuje kontrolę wizualną przydzielonego zakresu, nie nową kolację ze skanem źródłowym.
- Pozostałe czynności: agent prowadzący scala raport z kontrolami pozostałych zakresów i stanem eksportów.
- Zakończenie kontroli: 2026-11-13T09:18:13+00:00.
