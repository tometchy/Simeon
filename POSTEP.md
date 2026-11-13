# Stan pracy i punkt wznowienia

## Aktywne zadanie od 2026-10-28

Użytkownik zlecił tłumaczenie całej pozostałej książki w sposób wierny oryginałowi i piękny po polsku, z kontrolą skanu oraz ciągłym zapisem umożliwiającym wznowienie po wyczerpaniu limitu. „Kontynuuj” oznacza dalszą pracę nad tym zadaniem. Poprzednie ograniczenie do rozdziału I poniżej jest wyłącznie zapisem historycznym.

### Aktualizacja 2026-11-13 — porównywarka i instrukcja Pages

- Użytkownik odwołał wymóg Astra / Ultra. Usunięto z `AGENTS.md` wymóg konkretnego modelu i obowiązek sprawdzania jego metadanych. Starsze wzmianki o modelu poniżej pozostają historią pracy.
- Repozytorium ma już remote `origin`: `git@github.com:tometchy/Simeon.git`, gałąź domyślna `master`. Wcześniejsza informacja o braku adresu repozytorium jest nieaktualna.
- Sprawdzono `docs/compare.html`: lokalnie otwiera `charlessimeon00moulgoog.pdf` (321 stron) i `build/pdf/Charles-Simeon-H-C-G-Moule.pdf` (176 stron), na Pages pobiera te same ścieżki z `raw.githubusercontent.com` z gałęzi domyślnej rozpoznanego repozytorium. Kod porównywarki nie wymagał zmian.
- W README zapisano kroki publikacji `master` / `/docs` oraz adresy książki i porównywarki. Nie zmieniono ustawień Pages na GitHubie, nie potwierdzono wdrożenia strony.
- `make book`, `make test` i `git diff --check` zakończone powodzeniem. Przebudowanie zmieniło tylko daty i UUID eksportów, tekst i współrzędne wszystkich stron PDF identyczne. Zachowano poprzednie eksporty, bez zmian treści książki i bez potrzeby powtarzania jej przeglądu wizualnego.
- Gałąź zmian instrukcji: `codex/compare-pages-instructions`. Status PR-a sprawdzać przez GitHub API.

### Wznowienie 2026-11-13 — kontrola po poprawieniu podpisów

- Potwierdzono własną turę jako `gpt-6-astra` / `ultra`; trzej agenci także potwierdzili własne metadane Astra Ultra. Pierwszy pomiar: 09:14:54 UTC. Ostatni pomiar poprzedniej sesji: 2026-11-12 21:40:39 UTC; późniejszych minut nie zmierzono, przerwy limitowej nie zaliczać do pracy.
- Porównano zapisany koniec `chapters/18-rozdzial-17.md` z obrazem PDF307/druk276: końcowe akapity i inskrypcja „JESUS CHRIST AND HIM CRUCIFIED. 1 Cor. ii. 2.” kompletne. Cała przedmowa, nota i I–XVII zapisane oraz po niezależnym przeglądzie skanu. Nie ma dalszego fragmentu tekstu głównego do tłumaczenia.
- Pliki na dysku potwierdzają, że przed przerwą wygenerowano PDF i pozostałe eksporty po poprawieniu podpisów. PDF: 176 stron, SHA256 `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7`. `make pdf`, kontrola niepustego pliku i `make book` potwierdziły aktualność eksportów.
- Ponowne kontrole techniczne przeszły: kompletne 125 przypisów, archiwa EPUB/DOCX i ich XML poprawne, obecna greka i końcowa inskrypcja. `make test`: 1 test przeszedł. `git diff --check`: bez błędów. Skan źródłowy niezmieniony.
- Wersja sprzed związania podpisów została w całości obejrzana (`postep/pdf-final-*.md`). Porównanie bbox potwierdziło zmiany wyłącznie na PDF52–54 i PDF122–176; 118 pozostałych stron identycznych. W żadnej z 176 stron nie ma wyrazów poza marginesami x=131–480 pkt.
- Kontrola wizualna 58 zmienionych stron zakończona 09:18:20 UTC: raporty `postep/pdf-podpisy-a-20261113.md`, `postep/pdf-podpisy-b-20261113.md` i `postep/pdf-podpisy-c-20261113.md`. Trzy podpisy pozostają z końcówkami listów, brak obcięć, przekroczeń marginesów i kolizji; kapitaliki końcowej inskrypcji poprawne. Łącznie z kontrolą 118 niezmienionych stron zamknięto przegląd całego PDF-u. Starszy raport `pdf-podpisy-052-139.md` przerwano przed oględzinami.
- Przekład, porównanie ze źródłem, eksporty i przegląd wizualny zakończone. Plan, README oraz końcowy raport eksportów zaktualizowane. Komplet zmian zapisany lokalnie w commicie „Ukończ polski przekład Charles Simeon i sprawdź eksporty” na gałęzi `codex/complete-polish-translation`; identyfikator bieżącego commita sprawdzać przez `git log -1`.
- Po dodaniu wszystkich nowych plików `git diff --cached --check` przeszedł. Po commicie potwierdzono czysty katalog roboczy. Pomiar do zakończenia tych kontroli: 09:14:54–09:20:42 UTC, 5 min 48 s; nie obejmuje późniejszego uzupełnienia tego zapisu ani przerwy limitowej.
- Nadal brak lokalnego remote i wskazanego repozytorium Simeon na połączonym GitHub. Zadano pytanie o docelowy URL. PR nie został utworzony.
- Dokładne miejsce kontynuacji: sprawdzić `git log -1` i `git status --short`, aby potwierdzić zapis commita. Po wskazaniu adresu sprawdzić repozytorium i gałąź bazową, opublikować gałąź `codex/complete-polish-translation`, utworzyć oraz zweryfikować otwarty PR. Nie powtarzać zakończonego przeglądu książki, jeśli treść i hashe eksportów są niezmienione.

### Historia wznowienia 2026-11-12 — końcowa kontrola eksportów

- Potwierdzono własną turę jako `gpt-6-astra` / `ultra`. Pierwszy pomiar zegara w tej sesji: 21:34:52 UTC; wcześniejszych minut i przerwy od poprzedniej sesji nie doliczano do zmierzonego czasu pracy.
- Ponownie porównano koniec `chapters/18-rozdzial-17.md` z obrazem PDF307/druk276: końcowe akapity i inskrypcja są kompletne. Ostatni fragment: „JESUS CHRIST AND HIM CRUCIFIED. 1 Cor. ii. 2.” Nie pozostał dalszy tekst główny do tłumaczenia.
- Naprawy opisane w `postep/naprawa-skladu.md` zostały już wykonane przed przerwaniem poprzedniej sesji. Aktualny PDF ma 176 stron, SHA256 `807f65e279ecc6230874857452f9e99590244a203a91a955e86d4fdceaedebe4`.
- `make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf` i `make book` zakończyły się powodzeniem; wszystkie eksporty są aktualne względem zależności, nie wymagały ponownego budowania. PDF pochodzi z 2026-11-07 23:19 UTC, pozostałe formaty z 23:22 UTC.
- Kontrole techniczne: 125 unikalnych przypisów i 125 odsyłaczy w Markdownie oraz HTML, 125 przypisów w DOCX, poprawne archiwa EPUB/DOCX i ich XML, obecna greka i końcowa inskrypcja. Komentarz kolofonu pozostaje niewidoczny dla czytelnika. `make test`: 1 test przeszedł; `git diff --check`: bez błędów. Skan źródłowy ma identyczny blob jak w HEAD.
- Kontrola współrzędnych wszystkich 176 stron: brak wyrazów poza marginesami x=131–480 pkt. Wizualny przegląd końcowej wersji trwa równolegle w zakresach 1–58, 59–116 i 117–176; raporty `postep/pdf-final-*.md`.
- Publikacja: lokalnie nadal brak remote; ponowne sprawdzenie połączonego GitHub nie znalazło repozytorium Simeon. Potrzebny adres docelowego repozytorium. Nie utworzono jeszcze commita końcowego ani PR-a.
- Przegląd wykrył samotne podpisy na początku PDF53, PDF123 i PDF131. Dodano klasę `.keep-with-previous` w rozdziałach VI, XII i XIII oraz obsługę `\nopagebreak[4]` w filtrze Lua, bez zmiany słów przekładu. Wcześniejsze kontrole eksportów dotyczą wersji sprzed tej poprawki.
- Dokładne miejsce kontynuacji: wygenerować PDF po związaniu podpisów, porównać współrzędne stron z poprzednią wersją, obejrzeć zmienione strony, odświeżyć i sprawdzić pozostałe eksporty; następnie scalić raporty, zaktualizować plan i README, przygotować commit. Po wskazaniu repozytorium sprawdzić gałąź bazową, opublikować gałąź i utworzyć oraz zweryfikować PR.

### Historia wcześniejszych sesji

- Start tej sesji: 2026-10-28 06:03:34 UTC.
- Wznowienie po przerwie spowodowanej limitem: 2026-10-28 20:45:04 UTC. Przerwy nie zaliczać do czasu pracy.
- Wznowienie 2026-10-29 18:38:56 UTC; przerwy od poprzedniej sesji nie wliczać do pracy.
- Kolejne wznowienie po przerwie limitowej: 2026-10-29 05:43:38 UTC. Nie wliczać przerwy do czasu pracy.
- Wznowienie po przerwie 2026-10-30 07:27:32 UTC. Ostatni pomiar poprzedniej sesji: 2026-10-29 18:45:33 UTC; późniejsze minuty do przerwania nie zostały zmierzone, nie wliczać przerwy.
- Ponowne wznowienie 2026-10-30 18:45:24 UTC. Poprzednia sesja została przerwana, dokładny moment końca niezmierzony. Nie wliczać przerwy do aktywnej pracy.
- Gotowe przed sesją: rozdział I, commit `29c6235`, wszystkie eksporty sprawdzone.
- Wznowienie 2026-10-31 06:30:54 UTC. Dokładny koniec poprzedniej sesji niezmierzony; przerwy nie wliczać do czasu pracy.
- Wznowienie 2026-11-05 22:24:09 UTC po kolejnym przerwaniu limitem. Kontynuacja XII/XIV/XVI, sprawdzenie zgłoszonego ostrzeżenia modelu równolegle.
- Wznowienie 2026-11-05 06:40:47 UTC. Poprzednia praca przerwana limitem, dokładny koniec niezmierzony; przerwy nie wliczać do czasu pracy.
- Wznowienie 2026-11-06 06:21:55 UTC. Bieżąca tura potwierdzona w metadanych jako gpt-6-astra / ultra; na życzenie użytkownika zapisano w AGENTS.md obowiązek zatrzymania i dopytania przy innym lub niepotwierdzonym modelu/poziomie. Przerwy limitowej nie wliczać do pracy.
- Wznowienie 2026-11-06 17:03:50 UTC. Metadane bieżącej tury i trzech agentów: gpt-6-astra / ultra. Dokładny koniec poprzedniej sesji niezmierzony; przerwy limitowej nie zaliczać do pracy.
- Zapisany przekład: cała książka — przedmowa, nota, rozdziały I–XVII, do inskrypcji „JESUS CHRIST AND HIM CRUCIFIED. 1 Cor. ii. 2.” na PDF307/druk276. Nie ma dalszego fragmentu tekstu głównego do tłumaczenia. Katalog reklamowy po książce poza zakresem.
- Wznowienie 2026-11-07 07:06:15 UTC. Bieżąca tura potwierdzona gpt-6-astra / ultra. Przerwy od poprzedniej sesji nie wliczać do czasu pracy.
- Kontrola źródła: przedmowa, nota i I–XVII po pełnym niezależnym przeglądzie. Uzupełnienia zasłoniętych fragmentów V, IX i XI oraz brak czytelnego portretu udokumentowane w REVIEW.md.
- Wznowienie 2026-11-07 23:18:19 UTC (2026-11-08 czasu polskiego). Potwierdzono Astra Ultra. Przerwy limitowej nie zaliczać do czasu aktywnego.
- Eksporty: pełne PDF176 stron, EPUB, HTML i DOCX wygenerowano 2026-11-07 przez `make pdf`, kontrolę niepustego PDF-u i `make book`. Archiwa EPUB/DOCX i ich XML poprawne, greka oraz zakończenie obecne.125 przypisów kompletnych, bez duplikatów. Późniejsze poprawki składu wymagają odświeżenia eksportów.
- Przegląd wizualny: wszystkie176 stron wersji SHA256 `8a5b7672bf277766765a674b29d2568ae90cfabce064b96fbac9253deea74d4d` obejrzane (agenci1–132, prowadzący133–176). Raporty w postep/pdf-kontrola-*.md. Prowadzący dodatkowo wykrył trzy przekroczenia prawego marginesu (73,74,121), których raporty agentów nie wskazały.
- Poprawki składu: kapitaliki inskrypcji działają dzięki SmallCapsFont w metadata.yml; wielokropki związano niełamliwymi spacjami bez zmiany liczby kropek. Div keep-together obejmuje dwa początki listów w IV. Do zakończenia: skuteczne powiązanie początków listów i dzielenie trzech długich wyrazów; agent zapisuje stan w `postep/naprawa-skladu.md`.
- Gałąź bieżącej pracy: `codex/complete-polish-translation`, utworzona lokalnie od `29c6235` z zachowaniem wszystkich zapisanych zmian.
- Kontynuacja: odświeżyć wszystkie formaty, ponownie obejrzeć końcowy skład, scalić dokumentację i utworzyć commit/PR.
- Publikacja PR-a nadal wymaga wskazania docelowego repozytorium GitHub; lokalny projekt nie ma remote. Brak adresu nie wstrzymuje tłumaczenia.

## Historia: rozdział I, 2026-10-27

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

## Historyczna prognoza czasu z 2026-10-27

- Próbka: 11 stron oryginału, 2719 polskich wyrazów z nagłówkiem i przypisami według eksportu tekstowego Pandoca.
- Pomiar z przygotowaniem, równoległym przeglądem, eksportami i poprawkami składu: 11 min 35 s, czyli około 63 s na stronę źródła.
- Pozostała objętość: 265 stron tekstu głównego oraz około 4 strony przedmowy i noty. Liniowa ekstrapolacja daje około 4 godz. 43 min.
- Prognoza robocza: **5–8 godzin dalszej pracy** w podobnym trybie, z zapasem na trudniejsze fragmenty, terminologię i końcową kontrolę spójności całej książki. Poprzednia ocena 10–20 godzin była zbyt zachowawcza wobec wyniku tej próbki. To nadal prognoza z jednego rozdziału, nie gwarantowany termin.
- Przerwy wymuszone limitami i oczekiwanie na decyzje użytkownika nie wchodzą w ten czas. Zadanie nie ustanawia pracy w tle ani harmonogramu.

## Przygotowanie PR-a

Proponowany tytuł: „Ukończ polski przekład Charles Simeon i zaktualizuj wszystkie eksporty”.

Opis: Dodano pełny przekład przedmowy, noty oraz rozdziałów II–XVII, uzupełniając wcześniej ukończony rozdział I. Całą książkę porównano z obrazami źródła także w niezależnych przeglądach. Zachowano cytaty, wyróżnienia, grekę oraz 125 przypisów; uzupełnienia zasłoniętych miejsc i niejednoznaczności opisano w REVIEW.md. Zaktualizowano glosariusz, zapis postępu i regułę Astra Ultra. Eksporty PDF, EPUB, HTML i DOCX obejmują całość, a końcowe poprawki składu chronią kapitaliki, wielokropki, początki listów oraz podpisy. PDF ma 176 stron; zakończono przegląd wizualny całości i ponowny przegląd stron zmienionych po poprawkach.

Weryfikacja przed publikacją: make pdf, kontrola niepustego pliku, make book, git diff --check, kompletność125 przypisów, poprawność archiwów i XML oraz wizualna kontrola zmienionych stron końcowej wersji PDF-u. Szczegóły zakończenia kontroli zapisać w bieżącym stanie powyżej.

PR nie został utworzony. Brak lokalnego remote i wskazanego docelowego repozytorium. Nie używać repozytorium poprzedniej książki jako celu publikacji. Przed wysłaniem uzgodnić repozytorium i sprawdzić właściwą gałąź bazową (starsza historia lokalna dotyczy innej książki).
