# Weryfikacja narzędzi pakietu review z 2026-11-16

Status: ukończono. Zakres: statyczna kontrola `apply_review.py`, izolowane odtworzenie zachowania skryptu i testu integralności, rzeczywiste liczby plików i przypisów. Skrypt nie był uruchamiany w repozytorium; książka i testy repozytorium pozostają niezmienione. Wszystkie eksperymenty wykonano na kopiach w `TemporaryDirectory`, usuniętych po zakończeniu.

## Liczby deklarowane w cudzym raporcie

Potwierdzono dla bieżących `chapters/*.md`: 18 plików, 464 765 znaków Unicode ze znacznikami Markdown, 125 definicji przypisów, 125 wystąpień odsyłaczy i 125 unikalnych identyfikatorów odsyłaczy. Nie ma zduplikowanych definicji, brakujących definicji ani osieroconych przypisów. Po usunięciu komentarzy HTML nie znaleziono markerów TODO/FIXME/TBD. Deklaracje pakietu „około 465 tys.” i „125/125” są trafne.

## Skrypt stosujący poprawki

- Kontrola spodziewanego brzmienia jest rzeczywista: najpierw odczytuje wszystkie trzy rozdziały i sprawdza po jednym wystąpieniu każdej z czterech fraz, dopiero potem zapisuje. Izolowana próba z rozbieżnością w ostatnim sprawdzanym rozdziale zakończyła się kodem 1 i **zerem zmian**. Obietnica w docstringu „Fail without changing anything if originals differ” jest w tym wąskim znaczeniu spełniona.
- Skrypt **nie jest atomowy jako cała operacja**. Istnienie docelowego testu i raportu sprawdza dopiero po zapisaniu rozdziałów. Izolowana próba z istniejącym `tests/translation-integrity.test.mjs` zakończyła się kodem 1, ale wszystkie trzy rozdziały były już zmienione; istniejącego testu nie nadpisano. Analogiczny konflikt raportu następuje jeszcze później, po skopiowaniu testu. Błąd zapisu także nie ma mechanizmu wycofania.
- Zwykłe zastosowanie na czystej kopii zakończyło się kodem 0. Skrypt jest nieidempotentny, zgodnie z README pakietu: ponowne stosowanie wymagałoby przywrócenia spodziewanych starych fraz.
- Wniosek: nie traktować skryptu jako transakcji „wszystko albo nic”. Ewentualne przyszłe użycie wymaga uprzedniego sprawdzenia wszystkich plików docelowych i przeglądu diffu także po błędzie. Obecne zadanie nie obejmuje stosowania ani naprawiania skryptu.

## Test integralności

- Dostarczony test uruchomiono z prawidłowego miejsca (`tests/` obok kopii `chapters/`) zarówno na niezmienionej kopii książki, jak i na kopii po zastosowaniu skryptu: oba uruchomienia zakończone kodem 0. Kontrola pozytywna z dopisanym TODO kończy się kodem 1, potwierdzając wykonanie asercji.
- Test sprawdza dokładną listę nazw plików, pierwszy nagłówek `#` każdego pliku, unikalność definicji i zgodność zbiorów identyfikatorów przypisów oraz trzy markery robocze poza komentarzami HTML. To użyteczna kontrola struktury, nie wierności przekładu ani kompletności tekstu względem źródła.
- Nie wymaga dokładnie 125 przypisów ani pojedynczego wystąpienia każdego odsyłacza (odsyłacze trafiają do `Set`). Jednoczesne usunięcie przypisu i jego odsyłacza pozostaje niewykryte. Nie wymaga jednego nagłówka `#` w każdym pliku. Izolowana próba z usunięciem pary przypis–odsyłacz oraz dodaniem drugiego nagłówka `#` nadal zakończyła się kodem 0.
- Wyrażenia regularne nie są pełnym parserem Markdown: np. analizę przypisów prowadzą także wewnątrz komentarzy HTML, chociaż komentarze wycinają przy markerach roboczych; pierwszy wiersz definicji usuwany jest w całości przed szukaniem odsyłaczy. Nie dowiedziono, aby te ograniczenia zafałszowywały wynik dla obecnej książki.
- W repozytorium test jest nadal tylko częścią dostarczonego pakietu. Nie został dodany do głównego `tests/` ani podłączony do `make test`. Zdanie cudzej notatki „Dodano test” opisuje oczekiwany stan po zastosowaniu pakietu, a nie stan bieżącego repozytorium.

## Punkt wznowienia

Ocena techniczna zamknięta, wyniki gotowe do scalenia przez prowadzącego. Nie zmieniono książki, eksportów, skryptu ani testów. Nie wykonano pushowania ani PR-a.
