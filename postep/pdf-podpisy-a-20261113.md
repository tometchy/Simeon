# Kontrola podpisów — PDF 52–54 i 122–139, 2026-11-13

- Agent: `/root/podpisy_a`, własny `CODEX_THREAD_ID`: `01a1d430-816e-75b0-8e31-aa43f90ddcec`.
- Własny ostatni `turn_context`: potwierdzone `gpt-6-astra` / `ultra`.
- Plik: `build/pdf/Charles-Simeon-H-C-G-Moule.pdf`, 176 stron.
- SHA256 przed przeglądem: `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7`.
- Zakres: PDF 52–54 i 122–139 (21 stron). Szczególna kontrola podpisów na PDF 53, 123 i 131.
- Metoda: nowe własne rendery `pdftoppm -scale-to 1500 -png`, oględziny każdej strony oraz powiększenia zakończeń listów. Pliki tymczasowe w `/tmp/simeon-qa-20261113/podpisy-a/`.
- Bez zmian tekstu książki, PDF-u, plików wspólnych i bez commitów.
- Rozpoczęcie: 2026-11-13T09:15:53.514156+00:00.

## Stan

Obejrzano pełne nowe rendery PDF 52–54 i 122–139 (21 z 21 stron).

- PDF 52: marginesy, odsyłacz i przypis 35, początek listu oraz dolna krawędź składu bez obcięć i kolizji.
- PDF 53: podpis „C. Simeonowi.” pozostaje na tej samej stronie co końcowy wiersz poprzedniego akapitu „swemu najposłuszniejszemu, uniżonemu słudze,”. Nie jest już samodzielnym pierwszym wierszem strony. Brak kolizji i przekroczeń marginesów.
- PDF 54: tekst, odsyłacz i przypis 36 oraz numer strony czytelne, bez obcięć i kolizji.

- PDF 122: początki listów, daty, kursywa i główny tekst bez obcięć i kolizji, marginesy zachowane.
- PDF 123: formuła „Twój bardzo serdeczny Przyjaciel i Brat w Panu” znajduje się bezpośrednio pod dwoma końcowymi wierszami poprzedniego akapitu, bez osamotnionego podpisu na początku strony. Kolejna formuła „Pańskim najwierniejszym sługą, C. S.” również zachowuje właściwy związek z poprzedzającym listem. Układ strony poprawny.
- PDF 124: ciągłość tekstu, łacińska kursywa, początki listów i numer strony bez kolizji, marginesy zachowane.

- PDF 125: podpis po liście, datowany początek następnego listu, kursywa i dolne akapity mają poprawne odstępy, bez obcięć.
- PDF 126: łacińskie frazy kursywą czytelne, tekst mieści się w kolumnie; początki kolejnych fragmentów poprawnie oddzielone. Brak kolizji.
- PDF 127: cytaty, daty i kursywa czytelne, dolny akapit oraz numer strony zachowują odpowiedni odstęp. Brak przekroczeń marginesów.

- PDF 128: przejście z XII do XIII poprawne; nagłówek rozdziału ma wystarczającą przestrzeń, przypis 86 i odsyłacz czytelne, bez kolizji.
- PDF 129: długie cytaty, wielokropki i krótkie wpisy korespondentów bez przekroczeń marginesów; tekst i numer strony nie kolidują.
- PDF 130: odsyłacz i przypis 87, kursywa oraz wielokropki poprawnie wyświetlone. Dolny tekst listu i przypis zachowują odstęp.

- PDF 131: podpis „H. Martyn” pozostaje z formułą „Pozostaję, najdroższy Bracie, zawsze Ci oddany,” na tej samej stronie. Przypis 88 poprawnie oddzielony od tekstu, brak obcięć i kolizji.
- PDF 132: odsyłacze i przypisy 89–90 oraz łacińska kursywa poprawne wizualnie; dolna część strony zachowuje odstępy.
- PDF 133: odsyłacze i przypisy 91–92 czytelne, wpisy korespondentów i dolny podział akapitu bez kolizji, marginesy zachowane.

- PDF 134: odsyłacze i przypisy 93–94 zachowują odstępy, marginesy i numeracja poprawne, tekst bez obcięć.
- PDF 135: odsyłacze i przypisy 95–96, nazwy kursywą i fragmenty listów poprawnie wyświetlone; dolne wiersze listu nie kolidują z przypisami.
- PDF 136: podpis „J. J. Gurney” pozostaje z końcem listu. Nagłówek rozdziału XIV i pierwszy akapit mają poprawne odstępy; odsyłacz i przypis 97 czytelne, bez kolizji.

- PDF 137: pełne akapity i kursywa zachowują marginesy, brak obcięć i kolizji; dolna krawędź tekstu oddzielona od numeru strony.
- PDF 138: długi cytat, kursywa oraz wielokropek poprawne; skład w całości mieści się w kolumnie.
- PDF 139: ciąg dalszy cytatu i narracja bez kolizji, marginesy i numer strony zachowane.

## Punkt wznowienia

Przegląd tego zakresu zakończony. Nie pozostały kontrole w ramach przydziału. Agent prowadzący scala raport z przeglądami pozostałych stron i stanem eksportów.

## Wynik końcowy

- Obejrzano każdą z 21 stron PDF 52–54 i 122–139 na nowych pełnych renderach w skali do 1500 pikseli.
- Dodatkowo obejrzano powiększenia górnych części PDF 53, 123 i 131 z nowych renderów w skali do 3000 pikseli. Potwierdzono związek wszystkich trzech poprawianych podpisów z poprzedzającym zakończeniem listu.
- Nie stwierdzono obcięć tekstu, przekroczeń marginesów, nakładania elementów, nieczytelnych znaków ani problemów z widocznymi przypisami i numerami stron.
- Badany PDF ma 176 stron. SHA256 po przeglądzie jest zgodny z hashem początkowym: `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7`.
- Nie zmieniano książki ani PDF-u, nie uruchamiano ponownego generowania eksportów i nie tworzono commita ani PR-a. Raport dotyczy wyłącznie przeglądu wizualnego wskazanego zakresu.
- Zakończenie: 2026-11-13T09:18:20.005298+00:00.
