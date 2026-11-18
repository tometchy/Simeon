# Wdrożenie uwag z review — 17–18 listopada 2026

Na polecenie użytkownika „Na tym branchu są dodane uwagi, zrób poprawki” wdrożono wszystkie **23 aktywne uwagi: 10 P2 i 13 P3**. Poprawki zapisano 17 listopada, kontrole wznowiono 18 listopada po przerwie wynikającej z limitu. Baza: `509d69d`; gałąź: `codex/review-calosc-2026-11-15`.

Raporty review opisują stan sprzed wdrożenia. Niniejszy dokument rozstrzyga status poprawek. Nie zastosowano wycofanej XV-03, dwóch odrzuconych propozycji pakietu zewnętrznego ani jego skryptu. Nie korygowano rozbieżności samego oryginału, w tym IX-Z1.

## Wprowadzone poprawki

Każde wskazane miejsce porównano bezpośrednio z obrazem źródłowego PDF-u. Numery odnoszą się do skanu, nie do polskiego eksportu.

| ID | PDF / druk | Wdrożenie |
| --- | --- | --- |
| PRZ-01 | 25 / viii | „Wielką wdzięczność winien jestem” — przyjęta sugestia stylistyczna. |
| I-01 | 30 / 1 | Dereham zamiast błędnego odczytu Deneham. |
| I-02 | 34 / 5 | „Simeon wspominał: «Pomyślałem…»” — spójna osoba gramatyczna cytatu. |
| III-01 | 63 / 34 | Neutralna postawa Whichcote’a zamiast naturalnej. |
| IV-01 | 81 / 52 | Empory zgodnie z glosariuszem. |
| V-01 | 95 / 66 | Dzień 8 w dacie listu poza kursywą. |
| VI-01 | 113 / 84 | Sumienna praca zamiast świadomej. |
| VII-01 | 123 / 94 | Przywrócony uśmiech słuchaczy zamiast krytyki. |
| VIII-01 | 147 / 118 | Przywrócone ograniczenie do kilku zapraszanych osób. |
| VIII-02 | 157 / 128 | „Usilnie ich przekonywałem” zamiast kalki „usilne przedstawienia”. |
| T-01 | 176 / 147 | Kanonik Carus zgodnie z glosariuszem. |
| T-02 | 148 / 119 | Archdeacon Pratt zgodnie z glosariuszem; sprostowano stronę podaną w review. |
| X-01 | 192 / 163 | Dusze przejęte czcią zamiast trwale poruszonych. |
| XII-01 | 215 / 186 | Skrupulanctwo zamiast skrupulatności. |
| XII-02 | 216 / 187 | Jednoznaczne porównanie z ludźmi nieświadomymi i bezbożnymi. |
| XIII-01 | 230 / 201 | „Ganią przesądy” zamiast „pomniejszają przesądy”. |
| XIII-02 | 234 / 205 | Przywrócone ubóstwo prozelitów, którym Towarzystwo szukało zatrudnienia. |
| XIV-01 | 250 / 221 | Przywrócone „jego” i „stara” w opisie Biblii. |
| XV-01 | 270 / 239 | Termin październikowy dotyczy trzech ukończonych tomów, bez dopisanego „całość”. |
| XV-02 | 273 / 242 | „Uderzająco osobliwej” zamiast „niezwykle malowniczej” twarzy. |
| XV-04 | 279 / 248 | Przywrócony Close na liście uczestników jubileuszu. |
| XVI-01 | 285 / 254 | „Żołnierz na emeryturze” — przyjęta sugestia poprawy zrozumiałości. |
| XVII-01 | 302 / 271 | Przywrócone „niegdyś” przed „lektorium”. |

Punkty zapisu i szczegółowe rozstrzygnięcia: [przedmowa i I–V](../../postep/poprawki-2026-11-17-01-05.md), [VI–X](../../postep/poprawki-2026-11-17-06-10.md), [XI–XIV](../../postep/poprawki-2026-11-17-11-14.md), [XV–XVII i T-02](../../postep/poprawki-2026-11-17-15-17.md).

Przegląd wszystkich 23 zmian nie wskazał nowych błędów wymagających korekty; jego zakres niezależności opisuje [raport kontrolny](../../postep/poprawki-2026-11-17-kontrola.md). Glosariusz i REVIEW.md uaktualniono, w tym sprostowano dawne ustalenia dotyczące Dereham i lektorium. Rozdziały II i XI pozostały bez zmian.

## Eksporty i kontrole

`make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf`, `make book` i `git diff --check` zakończone powodzeniem. Eksporty wygenerowano 17 listopada; po wznowieniu 18 listopada potwierdzono ich aktualność bez ponownej generacji.

Porównanie tekstu i współrzędnych słów w PDF-ie wykazało **22 zmienione strony**: 2, 4, 6, 25, 37, 46, 57, 64, 79, 85, 97, 108, 121, 122, 130, 133, 142, 154, 156, 160, 163, 173. Pozostałe 154 strony mają identyczne słowa i współrzędne jak przed poprawkami. Liczba stron pozostaje równa 176. Automatyczna kontrola nie wykazała słów poza marginesami x=130–481 pkt.

Obejrzano wszystkie 22 zmienione strony: [zakres A](../../postep/poprawki-2026-11-18-pdf-a.md), [zakres B](../../postep/poprawki-2026-11-18-pdf-b.md). Nie stwierdzono obcięć, kolizji, przekroczeń marginesów, błędów kursywy i przypisów ani niepożądanych podziałów.

Kontrole struktury: zachowano komplet 18 plików książki i identyfikatory wszystkich 125 przypisów. Pandoc rozpoznaje 125 przypisów i 18 nagłówków, bez ostrzeżeń. HTML zawiera 125 przypisów, DOCX również 125. Archiwa EPUB/DOCX i pliki XML poprawne. Źródłowy PDF niezmieniony. Kod porównywarki nie był zmieniany.

SHA256 eksportów:

| Plik | SHA256 |
| --- | --- |
| PDF | `9441c9c642652ef5700ea92084b054dc8f1fe5139cccdf79c0d5f875e37db18d` |
| EPUB | `8779e112be4c7c22619d66348244b5a6169415a0e863eaf449f478d656d54f2c` |
| DOCX | `9a10711c53bb5f906f7970fb42187fec827ed1dc1857b4764fb333579be2b867` |
| HTML | `435c8001fc647f7e91016d3ef21283d8c1c605cf471310b8bcf2c6a002e1da7d` |

Treść, eksporty i przegląd wizualny zakończone. Status commita i PR-a jest śledzony osobno w POSTEP.md.


## Publikacja

Poprawki, eksporty i raporty zapisano w commicie `91cf618` i opublikowano gałąź `codex/review-calosc-2026-11-15` w `tometchy/Simeon`. Próba utworzenia PR-a do `master` zakończyła się 2026-11-18 błędem GitHub API `403 Resource not accessible by integration`. Potwierdzono, że otwarty PR z tej gałęzi nie istnieje. Brak dostępnego alternatywnego uwierzytelnienia API i narzędzia przeglądarki; dalszy krok wymaga udostępnienia uprawnień do tworzenia PR-ów lub ręcznego utworzenia. Wszystkie kontrole treści i eksportów pozostają zakończone.
