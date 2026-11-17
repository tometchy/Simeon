# Weryfikacja review innego AI z 16 listopada 2026

## Wynik

Sprawdzono wszystkie cztery propozycje językowe z pakietu `Simeon_review_2026-11-16/` na obrazach oryginału i w bieżącym przekładzie. **Jedna uwaga jest zasadna jako korekta językowa, jedna jako opcjonalne wygładzenie stylu, dwie nie wykazują błędu wymagającego korekty.** Nie potwierdzono nowego błędu znaczenia P2. Zbiorczy raport otrzymuje dwie pozycje P3: PRZ-01 i I-02, co zwiększa liczbę uwag z 21 do **23 (10 P2 i 13 P3)**. Liczba uwag obejmuje sugestie stylistyczne, nie oznacza 23 bezspornych błędów.

Pakiet oceniono na stanie wejściowym `5b9546a` z 2026-11-17. Wszystkie cztery ciągi wskazane do zastąpienia występują w przekładzie. Nie uruchomiono skryptu na książce i nie wdrożono proponowanych zmian. Zachowano lokalny zakres dotychczasowego review, bez pushowania i PR-a.

| Pozycja pakietu | Miejsce | Rozstrzygnięcie | Ujęcie w raporcie |
| --- | --- | --- | --- |
| 1 | Przedmowa, linia 15, PDF25/druk viii | Dopuszczalna poprawa naturalności, zbyt mocna diagnoza „kalki składniowej” | PRZ-01, P3, opcjonalna sugestia |
| 2 | Przedmowa, linia 19, PDF26/druk ix | Obecny szyk i liczba pojedyncza są poprawne | Bez nowej usterki; wariant stylistyczny |
| 3 | I, linia 21, PDF34/druk5 | Zasadna przebudowa wprowadzenia do cytatu | I-02, P3, korekta językowa |
| 4 | XIII, linia 97, PDF235/druk206 | Wielka litera występuje już w źródle | Odrzucona jako konieczna korekta |

## 1. PRZ-01 — P3: naturalność wyrażenia wdzięczności

- Plik: `chapters/01-przedmowa.md:15`, PDF25/druk viii.
- EN: „I owe many thanks to the Provost and Fellows of King’s College for kind permission given me to obtain a photograph of a Portrait in their possession”.
- PL: „Wiele wdzięczności winien jestem Provostowi i członkom King’s College noszącym tytuł fellow za życzliwe zezwolenie na wykonanie fotografii należącego do nich portretu”.
- Pakiet proponuje: „Serdecznie dziękuję Provostowi…” i uzasadnia to usunięciem kalki składniowej.

**Ocena:** propozycja jest dopuszczalna, lecz diagnoza zbyt kategoryczna. „Winien jestem” to poprawny, podniosły szyk polski. Słabszym miejscem jest połączenie „wiele wdzięczności”, które można wygładzić bez zmiany informacji. „Serdecznie dziękuję” oddaje podziękowanie, choć pomija obraz zobowiązania wyrażony przez *owe*. Preferowana minimalna redakcja to **„Wielką wdzięczność winien jestem Provostowi…”**. To opcjonalna sugestia stylistyczna, nie błąd sensu ani dowiedziony błąd gramatyczny. Pozostała treść i nazwy urzędów pozostają zgodne z glosariuszem.

Pewność odczytu: wysoka. Ocena naturalności: redakcyjna. Nie wdrożono.

## 2. Podziękowanie wielu osobom — brak wykazanego błędu

- Plik: `chapters/01-przedmowa.md:19`, PDF26/druk ix.
- EN: „My special thanks are due in many quarters for information given me on matters of University or College history, and for literary help of other kinds”.
- PL: „Wielu osobom winien jestem szczególne podziękowanie za udzielone mi wiadomości z dziejów Uniwersytetu i kolegiów oraz za pomoc w innych sprawach związanych z tą książką”.
- Pakiet proponuje: „Wielu osobom jestem winien szczególne podziękowania…” z uzasadnieniem „Poprawna składnia”.

**Ocena:** odrzucono diagnozę błędu składni. Zarówno „winien jestem”, jak i „jestem winien” są poprawne. Jedno podziękowanie może być skierowane do wielu osób; liczba adresatów nie wymusza liczby mnogiej rzeczownika „podziękowanie”. Angielskie *thanks* także nie wymaga mechanicznego odwzorowania liczby. Wersja proponowana jest dopuszczalną redakcją, ale nie ma podstaw do przedstawiania jej jako naprawy błędu. **Zalecenie: zachować obecny tekst**, ewentualnie rozważyć wariant podczas spójnej redakcji stylu przedmowy.

Nie dodano pozycji do licznika usterek i sugestii. Nie wdrożono.

## 3. I-02 — P3: osoba gramatyczna we wprowadzeniu do wspomnienia

- Plik: `chapters/02-rozdzial-01-rodzina-i-szkola.md:21`, PDF34/druk5.
- EN: „Simeon, in the words of his own reminiscence, ‘thought that if there was one who had more displeased God than others, it was I.’” (przytoczono pierwsze zdanie; cytat w źródle jest kontynuowany).
- PL: „Simeon, według słów jego własnego wspomnienia, «pomyślał, że jeśli ktoś bardziej niż inni wywołał niezadowolenie Boga, to byłem nim ja»” (fragment; w Markdownie użyto cudzysłowów „…”).
- Pakiet proponuje: „Simeon wspominał: «Pomyślałem, że jeśli ktoś bardziej niż inni wywołał niezadowolenie Boga, to byłem nim ja»”.

**Ocena:** uwaga zasadna jako korekta językowa P3. Moule łączy narracyjne wprowadzenie z pierwszoosobowym cytatem. Angielskie *thought* nie ujawnia osoby gramatycznej, natomiast polskie „pomyślał” wyraźnie wskazuje trzecią osobę i niezręcznie przechodzi do „byłem nim ja”, a następnie do dalszej relacji pierwszoosobowej. Nie jest to pomylenie bohaterów ani utrata treści. Propozycja pakietu zachowuje informację, że chodzi o wspomnienie Simeona, i daje spójną polską składnię. **Zalecenie: przyjąć proponowaną przebudowę wprowadzenia**, zachowując dalszy cytat, nawias autora, grekę i przypisy.

Skan potwierdza, że trudność pochodzi z połączenia narracji z cytatem w oryginale; nie należy przedstawiać jej jako przypadkowego przepisania niewłaściwej osoby przez tłumacza. Nie wdrożono.

## 4. Wielka litera w liście Wilberforce’a — nie poprawiać automatycznie

- Plik: `chapters/14-rozdzial-13.md:97`, PDF235/druk206.
- EN: „My dear Mr Simeon, My brother has probably told you of the very important work which I meditate.”
- PL: „Mój drogi Panie Simeonie, Mój brat zapewne opowiedział Panu o bardzo ważnej pracy, którą zamierzam podjąć”.
- Pakiet proponuje zmianę drugiego „Mój” na „mój”, ponieważ jest to „mała litera wewnątrz zdania”.

**Ocena:** odrzucono jako konieczną korektę. Wielkie drugie **My** jest wyraźnie widoczne w źródle. Odpowiada początkowi treści listu po formule adresatywnej, choć oba człony wydrukowano w jednym ciągu. Sąsiedni list Daniela Wilsona na tej samej stronie ma analogiczne „My dearest Brother and Friend, Yesterday…”. Obecny przekład odwzorowuje zapis oryginału, więc nie jest to dowiedziona literówka tłumacza.

Mała litera byłaby świadomą normalizacją redakcyjną formatu cytowanego listu, a nie przywróceniem źródła. Przy zasadach tego projektu **zalecenie brzmi: zachować obecną wielką literę**. Nie dodano nowej uwagi P3. Nie wdrożono.

## Ocena skryptu, testu i deklaracji pakietu

### Co potwierdzono

Aktualna książka ma 18 plików, 464 765 znaków Unicode ze znacznikami Markdown, 125 definicji przypisów i 125 odsyłaczy, bez zduplikowanych definicji, brakujących ani osieroconych przypisów. Nie znaleziono TODO/FIXME/TBD w tekście poza komentarzami HTML. Te deklaracje cudzego raportu są trafne i zgadzają się z wcześniejszym review.

### Ograniczenie skryptu `apply_review.py`

Skrypt poprawnie sprawdza wszystkie spodziewane frazy przed pierwszym zapisem. Próba z niezgodnością ostatniej frazy na izolowanej kopii zakończyła się błędem bez zmiany plików. Wąska obietnica z jego docstringu, dotycząca niezgodności tekstu wejściowego, jest więc spełniona.

**Cała operacja nie jest jednak atomowa.** Istnienie docelowego testu i raportu jest sprawdzane dopiero po zapisaniu trzech rozdziałów (`apply_review.py:41–50`). Odtworzono przypadek, w którym istniejący plik `tests/translation-integrity.test.mjs` powoduje kod zakończenia 1, lecz wszystkie trzy rozdziały są już zmienione. Konflikt pliku raportu następuje jeszcze później, po dodaniu testu. Nie należy zakładać, że błąd skryptu pozostawia książkę bez zmian. Nie uruchomiono go w repozytorium ani nie naprawiano w ramach tego zadania.

### Ograniczenia testu integralności

Test przechodzi na kopii obecnej książki oraz na kopii po zastosowaniu pakietu. Sprawdza nazwy plików, pierwszy nagłówek każdego pliku, zgodność zbiorów identyfikatorów przypisów i trzy markery robocze. Jest użyteczny jako podstawowa kontrola struktury, **nie poświadcza wierności ani kompletności tekstu**.

W izolowanej próbie przeszedł także po jednoczesnym usunięciu przypisu i jego odsyłacza oraz po dodaniu drugiego nagłówka `#`. Nie wymaga dokładnie 125 przypisów, pojedynczego wystąpienia odsyłacza ani dokładnie jednego nagłówka głównego na plik. Oparty jest na wyrażeniach regularnych, nie na pełnym parserze Markdown. Nie wykazano, by te ograniczenia zafałszowały bieżące liczby książki.

Plik testu znajduje się obecnie **wyłącznie wewnątrz pakietu**. Nie jest w głównym `tests/` ani nie jest uruchamiany przez istniejące `make test`. Zdanie pakietu „Dodano test” opisuje stan po jego zastosowaniu, nie bieżący stan repozytorium. Wszystkie próby wykonano w tymczasowych kopiach, bez instalacji testu w projekcie.

### Zakres wiarygodności całego review

Pakiet uczciwie zastrzega, że nie jest pełnym porównaniem każdego zdania ze skanem i że nie sprawdził eksportów. Tych ograniczeń nie należy usuwać. Natomiast nagłówek „Potwierdzone korekty” jest zbyt mocny dla wszystkich czterech pozycji: miesza zasadną korektę językową, preferencje stylistyczne i zapis przejęty z oryginału. Nie ma podstaw do stosowania wszystkich zmian automatycznie.

## Metoda i zakończenie

Wszystkie cztery miejsca obejrzano bezpośrednio na pełnych obrazach PDF25–26, PDF34 i PDF235, niezależnie przez prowadzącego i drugiego recenzenta. PDF33 obejrzano dodatkowo dla kontekstu. OCR nie był podstawą rozstrzygnięć. To kontrola wskazanych uwag, nie ponowny przegląd całej książki ani składu polskiego PDF-u.

Szczegółowe zapisy: [przedmowa](../../postep/weryfikacja-review-2026-11-16-przedmowa.md), [cytaty](../../postep/weryfikacja-review-2026-11-16-cytaty.md), [narzędzia i próby izolowane](../../postep/weryfikacja-review-2026-11-16-narzedzia.md), [punkt prowadzącego](../../postep/weryfikacja-review-2026-11-16.md). Weryfikacja zakończona 2026-11-17. Książka, pakiet wejściowy i eksporty pozostają niezmienione. Nie generowano ponownie eksportów, ponieważ zmiany dotyczą wyłącznie raportów. Nie ustalono nowych odpowiedników terminologicznych.
