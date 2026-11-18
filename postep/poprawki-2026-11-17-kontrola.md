# Kontrola wdrożenia uwag — zakończona 2026-11-18

Kontrola rozpoczęta 2026-11-17, przerwana limitem i wznowiona 2026-11-18. Baza porównania: `509d69d` (`HEAD` w chwili kontroli). Przerwy nie zaliczano do czasu pracy; nie sporządzano oszacowania czasu.

## Zakres i wynik

Przeczytano cały diff `chapters/` względem bazy, pełne zmienione zdania w kontekście, indeks 23 uwag, odpowiednie raporty review i cztery raporty wdrożenia `poprawki-2026-11-17-{01-05,06-10,11-14,15-17}.md`. Wszystkie **23 aktywne uwagi mają odpowiadającą zmianę w przekładzie**, bez dodatkowych zmian słów poza tym zakresem. Nie stwierdzono nowego błędu znaczenia ani usterki składni wymagającej poprawki.

To kontrola wdrożenia, nie ponowne porównanie całej książki ze skanem. Recenzent nie jest niezależny od pięciu poprawek XII–XIV, które sam wprowadził; pozostałe osiemnaście zmian wykonały inne osoby zespołu. XII–XIV sprawdzono ponownie w kontekście całego diffu. Obrazy PDF230/druk201 oraz PDF273/druk242 odczytano bezpośrednio dla poniższych rozstrzygnięć leksykalnych; obrazy pozostałych zmienianych miejsc opisują raporty wdrożenia.

| ID | Wynik kontroli |
| --- | --- |
| PRZ-01 | „Wielką wdzięczność” usuwa niezręczność i zachowuje obraz zobowiązania. |
| I-01 | Dereham przywraca odczyt ustalony ze skanu. |
| I-02 | „Simeon wspominał: «Pomyślałem…»” zapewnia spójną osobę cytatu, zachowuje jego dalszy tekst. |
| III-01 | „neutralna” przywraca znaczenie *neutral*. |
| IV-01 | „emporach” jest zgodne z ustalonym odpowiednikiem kościelnego *gallery*. |
| V-01 | Cyfra dnia wyłączona z kursywy, miejscowość i miesiąc pozostają wyróżnione. |
| VI-01 | „sumiennej” oddaje *conscientious*. |
| VII-01 | Uznanie/uśmiech odwzorowuje *approved or smiled*, bez dopisanej krytyki. |
| VIII-01 | „kilka osób” przywraca ograniczenie *a few*. |
| VIII-02 | „usilnie ich przekonywałem, iż nie godzi się” zachowuje naleganie i ocenę rozstrzygania bez rozmowy. Zdanie pozostaje gramatyczne w kontekście „żaden… nie przyszedł… lecz jedynie dlatego…”. |
| T-01 | „kanonika Carusa” stosuje istniejące ustalenie, bez zmiany identyfikatora przypisu. |
| T-02 | „Archdeacona Pratta” ujednolica zapis według glosariusza. |
| X-01 | „głęboko poruszone i przejęte czcią” zachowuje oba wymiary *deeply and devoutly*. |
| XII-01 | „skrupulanctwem” trafnie rozróżnia skrupuły sumienia od sumiennej dokładności. |
| XII-02 | Drugie „ludzie” usuwa dwuznaczność porównania grup. |
| XIII-01 | „ganią” oddaje negatywną ocenę słowną zamiast zmniejszania przesądów; ocena szczegółowa poniżej. |
| XIII-02 | „Ubogich Prozelitów” przywraca *poor*. |
| XIV-01 | „Jego mała, stara Biblia” przywraca szczegóły opisu. |
| XV-01 | Liczba mnoga „ukażą się” odnosi termin do trzech ukończonych tomów. |
| XV-02 | „uderzająco osobliwej” przywraca dziwaczność zamiast samej malowniczości; ocena szczegółowa poniżej. |
| XV-04 | Close obecny jako ostatni uczestnik listy, inne nazwiska zachowane. |
| XVI-01 | „na emeryturze” przyjęte jako doprecyzowanie stylistyczne zgodne z rozstrzygnięciem review, bez zmian studenckiego *pensioner* w IX. |
| XVII-01 | „niegdyś” przywraca *once* i dawne przeznaczenie przegrody. |

## XIII-01 — siła „ganią”

Na PDF230/druk201 widnieje „too fond of running down the superstitions of the natives and abusing the Bramins”, w przeciwstawieniu do wykładania Ewangelii „with dignity and love”. „Ganić” oznacza tu wyrażanie nagany i dezaprobaty, a zatem przywraca działanie słowne, którego nie pokazywało jasno „pomniejszać”. W połączeniu z „nazbyt chętnie”, „znieważają braminów” oraz zdaniem o braku czułości zachowuje krytyczny ton całego ustępu. Mocniejsze „napastliwie krytykują” byłoby dopuszczalnym wariantem, ale obecnego brzmienia nie uznaję za wymagające dalszej korekty. Jest zgodne z pierwszą propozycją raportu XIII-01.

## XV-02 — siła „uderzająco osobliwej”

PDF273/druk242 ma „peculiarly grotesque and versatile, and at the same time affecting”. „Uderzająco osobliwa” wskazuje wyrazistą nietypowość lub dziwaczność, nie sam urok czy atrakcyjność obrazu. Wraz z zachowanymi „pełnej zmiennej ekspresji” i „a zarazem wzruszającej” oddaje kontrast źródła. Usuwa konkretny błąd wskazany w review, czyli zastąpienie osobliwości „malowniczością”. Brzmienie jest adekwatne w tym kontekście; nie wymaga zastąpienia mocniejszym „groteskowej”. To ocena redakcyjna tego zdania, nie nowe ustalenie słownikowe dotyczące wszystkich historycznych użyć *grotesque*.

## Zakres zachowany i kontrole

- Wycofanej XV-03 nie zastosowano; znaczniki `*Simeon.*` nie są zdublowane ani usunięte.
- Nie zastosowano odrzuconej drugiej zmiany przedmowy ani zmiany wielkiego „Mój” w liście Wilberforce’a w XIII.
- Rozbieżność źródła IX-Z1 pozostała bez korekty. Rozdziały II i XI bez zmian.
- We wszystkich osiemnastu plikach rozdziałów identyfikatory i kolejność przypisów są identyczne jak w bazie. Liczba wierszy każdego pliku zachowana. Jedyna zmiana zakresu kursywy dotyczy V-01.
- Kontrola `git diff --check -- chapters postep/poprawki-2026-11-17-kontrola.md`: bez błędów.

## Punkt wznowienia

Kontrola treści wdrożenia zakończona. Nie edytowano książki, plików wspólnych ani eksportów podczas tej kontroli. Pozostałe kontrole eksportów, przegląd składu, scalenie dokumentacji i publikacja należą do prowadzącego. Ten raport nie potwierdza wykonania tych etapów.
