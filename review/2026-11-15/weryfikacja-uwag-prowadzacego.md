# Niezależna weryfikacja uwag prowadzącego — 2026-11-16

## Zakres i metoda

Sprawdzono sześć zgłoszeń: XV-01–04, XVI-01, XVII-01. Odczytano obrazy stron źródłowych PDF270, 273, 274, 279, 285 i 302 oraz odpowiadające im akapity bieżącego Markdownu. To kontrola konkretnych uwag, nie ponowny przegląd całych trzech rozdziałów. Nie wykonywano zewnętrznych ustaleń historycznych ani wyszukiwania internetowego. Nie zmieniono tekstu książki ani raportów prowadzącego.

## Wynik

| ID | Ocena niezależna | Zalecany priorytet | Pewność |
| --- | --- | --- | --- |
| XV-01 | Potwierdzona zmiana zakresu zapowiedzi wydawniczej | P2 | wysoka |
| XV-02 | Potwierdzone osłabienie znaczenia przymiotnika | P2 | wysoka co do różnicy sensu, redakcyjny wybór odpowiednika otwarty |
| XV-03 | Odrzucona: znacznik już znajduje się w przekładzie | brak | wysoka |
| XV-04 | Potwierdzone pominięcie Close’a | P2 | wysoka |
| XVI-01 | Doprecyzowanie dla współczesnego czytelnika, nie dowiedziony błąd leksykalny | P3 | wysoka co do ryzyka niejasności, umiarkowana co do interpretacji historycznej |
| XVII-01 | Potwierdzone pominięcie „once” | P2 | wysoka |

### XV-01 — PDF270 / druk239, linia46

Źródło: „Three volumes are now finished, and, I hope, to be out in October”. Oba człony zdania mają za podmiot trzy tomy. Wcześniejsza wzmianka o sześciotomowym Dodatku nie uzasadnia dopisania w przekładzie „całość”. Naturalna lektura polskiego zdania przypisuje październik całemu Dodatkowi. Zalecana korekta usuwa dopowiedzenie i zachowuje liczbę mnogą:

```markdown
Trzy tomy są już ukończone i, mam nadzieję, ukażą się w październiku.
```

### XV-02 — PDF273 / druk242, linia54

Źródło: „peculiarly grotesque and versatile, and at the same time affecting”. Przekład „niezwykle malowniczej” usuwa element osobliwości lub dziwaczności. Otoczenie mówi o ruchliwości i sile wyrazu twarzy, nie tylko o atrakcyjnym obrazie. „Uderzająco osobliwej” jest ostrożniejszym odpowiednikiem niż współczesne mocne „groteskowej”, które mogłoby nadmiernie sugerować karykaturalność. Uwagi nie należy uzasadniać wyłącznie dzisiejszym znaczeniem angielskiego „grotesque”. Resztę polskiego opisu („pełnej zmiennej ekspresji, a zarazem wzruszającej”) można zachować.

### XV-03 — PDF274 / druk243, linia64

**Zgłoszenie nie potwierdza się.** Źródło rzeczywiście zaczyna wypowiedź od kursywnego „Simeon.”, ale bieżący plik oraz wersja `HEAD` również zawierają znacznik:

```markdown
„*Simeon.* «Przykro mi, kiedy słyszę…
```

Nie ma pominięcia imienia ani kursywy. Nie należy wdrażać proponowanego przywrócenia, bo stworzyłoby duplikat. Uwagę XV-03 należy oznaczyć w raporcie jako wycofaną i wyłączyć z liczby potwierdzonych usterek.

### XV-04 — PDF279 / druk248, linia86

W ostatnim wierszu PDF279 wyraźnie widnieje „Sargent, Bickersteth, Hankinson, Marsh, Close, were”. W polskiej liście po Marshu następuje już wzmianka o Wilberforce’ie. Pominięto Close’a. Zalecane uzupełnienie:

```markdown
Byli wśród nich Sargent, Bickersteth, Hankinson, Marsh i Close
```

### XVI-01 — PDF285 / druk254, linia27

„Pensioner soldier” wraz z kontekstem wieku, munduru oraz ograniczonego udziału w zbiórkach przemawia za żołnierzem pobierającym świadczenie po czynnej służbie. Współczesne polskie „na pensji” może sugerować bieżące wynagrodzenie. Nie wystarcza to jednak do stanowczego zarzutu błędu: dawna polszczyzna mogła używać „pensji” również w sensie stałego świadczenia lub emerytury. Tego zakresu historycznego nie sprawdzano tu słownikowo, więc nie należy ani go kategorycznie wykluczać, ani przedstawiać jako nowego potwierdzonego ustalenia terminologicznego.

Zalecam **P3: archaizm lub niejasność dla współczesnego czytelnika**, zamiast P2 z wysoką pewnością błędu znaczenia. Proponowane „żołnierza na emeryturze” czy „żołnierza pobierającego emeryturę” poprawia zrozumiałość, wymaga jednak świadomej decyzji redakcyjnej. Nie utożsamiać tego użycia z terminem odnoszącym się do studentów.

### XVII-01 — PDF302 / druk271, linia53

Ostatni wiersz obrazu wyraźnie zawiera „screen, once the rood-loft, carved by Italian hands with”. „Once” nie wynika z domysłu o dziejach budowli, lecz jest obecne w tekście. Polskie zestawienie „przegrodę organową, lektorium” nie oddaje dawnego przeznaczenia. Minimalna korekta:

```markdown
masywną przegrodę organową, niegdyś lektorium
```

Potwierdzam sprzeczność tego odczytu ze starszą notatką REVIEW.md o usunięciu „niegdyś”. Tamten zapis wymaga korekty lub wyraźnego oznaczenia jako błędna wcześniejsza decyzja. Sama historyczna i architektoniczna precyzja odpowiednika „lektorium” nie była przedmiotem tej kontroli.

## Status

Weryfikacja wszystkich sześciu zgłoszeń zakończona. Cztery P2 potwierdzone, jedno zgłoszenie zalecane jako P3, jedno odrzucone. Do prowadzącego należy aktualizacja liczników i raportów zbiorczych. Bez zmiany przekładu i eksportów, bez pushowania oraz PR.
