# Weryfikacja zewnętrznego review — 2026-11-17

Status: weryfikacja i kontrole końcowe zakończone, raport scalony. Lokalny zapis rozpoznawać po tytule commita podanym na końcu. Baza wejściowa `5b9546a`, gałąź `codex/review-calosc-2026-11-15`, początkowo czysty katalog roboczy. Poniżej historia checkpointów i aktualne miejsce kontynuacji na końcu.

Zakres: cztery propozycje z `Simeon_review_2026-11-16/`, ocena dołączonego skryptu i testu, scalenie wyników z `review/2026-11-15/README.md`. Nie uruchamiać skryptu na książce. Obowiązuje zapisany dla lokalnego review zakaz push/PR; obecne zadanie uzupełnia ten raport.

Przeczytano pakiet, POSTEP.md, PLAN-TLUMACZENIA.md, REVIEW.md oraz raport zbiorczy. Rozpoznano cztery propozycje: dwie w przedmowie, jedna w I, jedna w XIII. Nie są jeszcze uznane za poprawki.

## Wznowienie po limicie, 2026-11-17

Pierwszy agent został zatrzymany limitem przed zapisaniem ustaleń. Ponownie sprawdzono git status, POSTEP.md, PLAN-TLUMACZENIA.md, REVIEW.md i TERMINOLOGIA.md. Zmiany przed wznowieniem obejmowały tylko niniejszy checkpoint i wpis w POSTEP.md, książka niezmieniona. Przerwy nie zaliczamy do aktywnej pracy.

Prowadzący obejrzał obrazy PDF33–34/druk4–5 oraz PDF235/druk206 wygenerowane z bieżącego skanu:

- Rozdział I, linia21: źródło ma `Simeon, in the words of his own reminiscence, “thought that if there was one who had more displeased God than others, it was I.` Angielskie `thought` łączy się z narracją i pierwszoosobowym wspomnieniem; polskie `pomyślał ... byłem nim ja` ujawnia zmianę osoby. Zasadne rozważenie przebudowy wprowadzenia, nie brak treści ani błąd przypisania osoby. Wstępna kwalifikacja: P3.
- Rozdział XIII, linia97: skan ma wyraźnie `My dear Mr Simeon, My brother has probably told you`. Wielkie drugie `My` występuje w oryginale. Nie jest to dowiedziona literówka tłumacza; odrzucić automatyczne uznanie małej litery za konieczną korektę.

Trwają niezależne kontrole przedmowy, cytatów oraz narzędzi. Własne checkpointy agentów: `weryfikacja-review-2026-11-16-przedmowa.md`, `weryfikacja-review-2026-11-16-cytaty.md`, `weryfikacja-review-2026-11-16-narzedzia.md` w tym katalogu.

Punkt wznowienia: odczytać wyniki agentów, dokończyć porównanie przedmowy i ocenę techniczną. Następnie zapisać raport weryfikacji, zaktualizować indeks i REVIEW.md, sprawdzić linki/diff/brak zmian książki, utworzyć lokalny commit. Nie generować eksportów bez zmiany książki.

## Scalenie, 2026-11-17

Wszystkie cztery miejsca sprawdzone ze skanem przez prowadzącego i niezależnie przez agentów. Przedmowa PDF25–26/druk viii–ix, I PDF34/druk5, XIII PDF235/druk206. Zapisano [pełny raport](../review/2026-11-15/weryfikacja-review-2026-11-16.md), uzupełniono indeks oraz raporty przedmowy, I i XIII, REVIEW.md, PLAN-TLUMACZENIA.md i POSTEP.md.

Wynik: I-02 to zasadna korekta językowa P3, PRZ-01 to opcjonalna redakcja P3. Propozycje 2 i 4 nie wykazują błędu wymagającego korekty. Łącznie 23 uwagi (10 P2 i 13 P3), bez nowej P2. Potwierdzono 18 plików, 464 765 znaków, 125 przypisów/odsyłaczy. Skrypt sprawdzono wyłącznie w izolacji: niezgodne frazy blokują zapisy, ale konflikt pliku testu powoduje błąd już po zmianie rozdziałów. Test nie poświadcza kompletności ani wierności książki. Szczegóły i dowody zachowania zapisano w checkpointcie narzędzi.

Aktualny punkt wznowienia: końcowa kontrola linków, liczników, diffu i braku zmian książki/pakietu/eksportów, następnie lokalny commit „Zweryfikuj uwagi z zewnętrznego review”. Nie pushować i nie tworzyć PR-a. Eksportów nie generowano, skład niezmieniony. Nie pozostały kontrole skanu ani propozycje z pakietu bez rozstrzygnięcia.

## Zamknięcie

Sprawdzono 70 lokalnych odsyłaczy w 12 zmienionych/nowych plikach dokumentacji, wszystkie cele istnieją. Tabela indeksu ma 23 unikalne uwagi: 10 P2 i 13 P3. `git diff --check` przeszedł. Porównanie z bazą `5b9546a` potwierdziło brak zmian `chapters/`, skanu, `build/`, `docs/`, `tests/`, pakietu wejściowego i glosariusza. Nie powtarzano testów porównywarki ani generowania eksportów, ponieważ zmiany dotyczą wyłącznie dokumentacji. Niezależna kontrola raportu po scaleniu nie wskazała istotnych niespójności.

Przy ewentualnym przerwaniu zapisu sprawdzić `git status --short` i `git log -1`. Docelowy tytuł lokalnego commita: **Zweryfikuj uwagi z zewnętrznego review**. Jeśli commit istnieje i katalog roboczy jest czysty, zadanie jest zakończone. W przeciwnym razie dokończyć wyłącznie zapis dokumentacji i kontrolę indeksowanego diffu. Nie powtarzać kolacji, nie wdrażać propozycji do książki, nie pushować i nie tworzyć PR-a.
