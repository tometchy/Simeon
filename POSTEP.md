# Stan pracy i punkt wznowienia

## Zadanie i stan zakończenia

Na prośbę użytkownika: przetłumaczyć cały rozdział I, sprawdzić przekład i eksporty, utworzyć PR oraz ponownie oszacować czas tłumaczenia książki na podstawie pomiaru. Przedmowa pozostaje poza zakresem tego zadania.

- Początek pomiaru: 2026-10-27 19:58:26 UTC.
- Pierwszy pełny przekład zapisany: 2026-10-27 20:05:14 UTC (6 min 48 s od rozpoczęcia; obejmuje przygotowanie i zapis reguł wznawiania, jeszcze bez zakończonej korekty i eksportów).
- Kontrola tekstu i końcowych eksportów zakończona: 2026-10-27 20:10:01 UTC. Łącznie 11 min 35 s czasu zegarowego sesji, z równoległym przeglądem przez drugiego agenta. Pomiar nie obejmuje późniejszego zapisu podsumowania, commita ani publikacji PR-a. Nie wystąpiła przerwa z powodu limitu.
- Plik: `chapters/02-rozdzial-01-rodzina-i-szkola.md`.
- Gałąź robocza: `codex/translate-chapter-01`, utworzona od lokalnego commita przygotowania projektu `49ddd97`. Przed publikacją sprawdzić zgodność z docelową gałęzią bazową; starsza lokalna historia dotyczy innej książki.
- Źródło: `charlessimeon00moulgoog.pdf`, PDF 30–40, druk 1–11.
- Zapisany przekład: cały rozdział I, PDF 30–40 / druk 1–11, cztery przypisy, ośmiowersowy cytat poetycki i greka.
- Ostatni ukończony akapit: kończy się „their brethren of the Church.”
- Kontynuacja tego zadania: sprawdzić `git status --short` i `git log -1` (komplet zmian przygotowany do commita „Przetłumacz rozdział I i zapisz zasady wznawiania pracy”), a po otrzymaniu adresu repozytorium opublikować gałąź, utworzyć PR i zweryfikować jego stan oraz gałęzie przez GitHub API/CLI. Nie zaczynać rozdziału II w ramach tego zadania.
- Porównanie ze skanem: ukończone dla wszystkich 11 stron, także w niezależnym przeglądzie; poprawiono pominięte określenie arcybiskupów i nazwisko Hutton oraz kilka sformułowań.
- Eksporty: końcowe `make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf` i `make book` zakończone powodzeniem. `make test`: 1 test przeszedł. `git diff --check`: bez błędów. Dodatkowo potwierdzono 4 unikalne i kompletne przypisy, 8 wersów wiersza w strukturze Pandoca, poprawność archiwów EPUB/DOCX oraz obecność greki i końca przekładu w EPUB/DOCX/HTML. Źródłowy PDF pozostaje niezmieniony.
- Przegląd wizualny: po poprawkach ponownie obejrzano wszystkie 8 stron PDF-u. Usunięto przekroczenie marginesu i samotny początek akapitu, greka pozostaje w jednym wierszu; wszystkie strony przeszły kontrolę.
- PR: jeszcze nieutworzony, w lokalnym repozytorium brak skonfigurowanego remote. Połączone konto GitHub nie udostępnia repozytorium Simeon. Zadano użytkownikowi pytanie o URL, bez wstrzymywania przekładu.

## Materiały pomocnicze

Potwierdzona objętość książki: druk 1–276, PDF 30–307, plus przedmowa i nota (PDF 24–27). Brak osobnego indeksu lub aneksu. PDF 308–320 to katalog reklamowy Methuen (13 stron), PDF 321 to tylna okładka. Przesunięcie numeracji PDF względem druku nie jest stałe, ustalaj je ze skanu. Do prognozy przyjmować 276 stron tekstu głównego i 4 strony przedmowy/noty, nie 321 stron skanu.

Obrazy źródła: `/tmp/simeon-ch01/source-030.png` do `source-040.png`. Są odtwarzalne poleceniem `pdftoppm -f 30 -l 40 -r 150 -png charlessimeon00moulgoog.pdf /tmp/simeon-ch01/source` po utworzeniu katalogu. Nie polegaj na zachowaniu plików tymczasowych po wznowieniu.

## Zasada wznowienia

Sprawdź rzeczywisty koniec pliku rozdziału i porównaj go ze skanem, zanim dopiszesz dalszy tekst. Szczegóły trwałego zapisywania postępu: `AGENTS.md`, sekcja „Odporność na przerwanie i wznawianie”.

## Ponowne oszacowanie czasu

- Próbka: 11 stron oryginału, 2719 polskich wyrazów z nagłówkiem i przypisami według eksportu tekstowego Pandoca.
- Pomiar z przygotowaniem, równoległym przeglądem, eksportami i poprawkami składu: 11 min 35 s, czyli około 63 s na stronę źródła.
- Pozostała objętość: 265 stron tekstu głównego oraz około 4 strony przedmowy i noty. Liniowa ekstrapolacja daje około 4 godz. 43 min.
- Prognoza robocza: **5–8 godzin dalszej pracy** w podobnym trybie, z zapasem na trudniejsze fragmenty, terminologię i końcową kontrolę spójności całej książki. Poprzednia ocena 10–20 godzin była zbyt zachowawcza wobec wyniku tej próbki. To nadal prognoza z jednego rozdziału, nie gwarantowany termin.
- Przerwy wymuszone limitami i oczekiwanie na decyzje użytkownika nie wchodzą w ten czas. Zadanie nie ustanawia pracy w tle ani harmonogramu.

## Przygotowanie PR-a

Proponowany tytuł: „Przetłumacz rozdział I i dodaj zapis postępu odporny na przerwanie”.

Opis: Rozdział I obejmuje pełny przekład drukowanych stron 1–11, z czterema przypisami, greką i wierszem Cowpera, sprawdzony z oryginalnym skanem. Dodano trwały punkt wznowienia i obowiązek zapisywania tekstu co 1–2 strony, uzupełniono glosariusz i uwagi. Zaktualizowano PDF, EPUB, HTML i DOCX oraz poprawiono skład PDF-u. Weryfikacja: `make pdf`, kontrola niepustego PDF-u, `make book`, `make test`, `git diff --check` i wizualna kontrola wszystkich 8 stron PDF-u. Przedmowa pozostaje nieprzetłumaczona.

Nie podawać linku do PR-a przed jego rzeczywistym utworzeniem i sprawdzeniem. Nie używać repozytorium poprzedniej książki jako celu publikacji.
