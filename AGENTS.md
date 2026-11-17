# Charles Simeon — instrukcje pracy

To repozytorium służy do tłumaczenia z angielskiego na polski książki *Charles Simeon* autorstwa H. C. G. Moule’a (Handley Carr Glyn Moule), Methuen & Co., London, 1892.

Źródło: `charlessimeon00moulgoog.pdf`. Tłumaczenie powstaje stopniowo w `chapters/`. Nie zakładaj, że całość jest już przetłumaczona. Stan i kolejność prac opisuje `PLAN-TLUMACZENIA.md`.

## Wierność tłumaczenia

1. Zachowuj sens, tok argumentacji i rozróżnienia terminologiczne autora. Nie poprawiaj go merytorycznie, nie dopowiadaj własnych wyjaśnień i nie pomijaj informacji dla płynności stylu.
2. Zachowuj cytaty, daty, nazwiska, tytuły, symbole, em dash, Q.E.D. i wyróżnienia. Zachowuj kursywę łacińskich i greckich wyrażeń, jeśli występuje w źródle.
3. Problemy w źródle, literówki i niejednoznaczności sygnalizuj poza tłumaczeniem lub w `REVIEW.md`. Nie zmieniaj znaczenia samowolnie.
4. Nazwy i odpowiedniki sprawdzaj w `TERMINOLOGIA.md` oraz istniejących rozdziałach. Nowe ustalenia zapisuj w glosariuszu. Nie narzucaj nieuzgodnionych odpowiedników historycznych urzędów i instytucji.
5. Nazwy ksiąg biblijnych podawaj zgodnie z Biblią Toruńską (np. Revelation → Objawienie Jana). Skrót NT rozwijaj jako Nowy Testament.
6. Cytaty biblijne tłumacz samodzielnie i wiernie z tekstu przytoczonego przez autora, bez zastępowania ich gotowym polskim przekładem. Zachowuj wielkość liter oryginalnego cytatu, także w tytułach i zaimkach.
7. Nawiasy autora zachowuj, preferując okrągłe, a kwadratowe stosuj przy nawiasach wewnątrz nawiasów. Nie zmieniaj nawiasów należących do składni Markdownu.
8. Preferuj przecinki zamiast średników, gdy można to zrobić bez utraty sensu i struktury wypowiedzi.
9. Przekład ma być zarazem wierny i piękny po polsku: układaj zdania naturalnie, dbaj o rytm i czytelność, unikaj kalk składniowych. Poprawa stylu nie upoważnia do pomijania szczegółów, osłabiania sądów autora ani dopisywania wyjaśnień.

## Markdown i przypisy

- Zachowuj pełny Markdown, w tym `*kursywę*`, `**pogrubienia**`, indeksy górne `^...^`, nagłówki, listy i przypisy. Nie zmieniaj istniejących identyfikatorów przypisów.
- Nowe przypisy otrzymują unikalne w całej książce identyfikatory opisujące ich treść, np. `[^carus-wspomnienia-o-simeonie]`, zamiast powtarzających się numerów. Definicje umieszczaj w odpowiednim pliku rozdziału. Przypisy tłumacza oznaczaj `(przyp. tłum.)`.
- Stosuj zwykłe tabele Markdown z pionowymi kreskami `|`, bez surowego LaTeX-u.
- Tłumaczenie prezentowane w rozmowie zawsze podawaj jako surowy Markdown w bloku kodu oznaczonym `markdown`, aby można je było skopiować na Androidzie bez utraty gwiazdek. Do plików `chapters/` zapisuj sam Markdown, bez zewnętrznego bloku kodu.
- Każda część książki ma oddzielny plik z prefiksem liczbowym. Nagłówek `#` oznacza część lub rozdział, `##` podrozdział. Zachowuj kolejność oryginału. Pliki są łączone według nazw.
- Nie dodawaj treści roboczej do widocznego tekstu książki. Wskazówki i odniesienia do stron mogą być zapisane w komentarzach HTML.

## Praca ze skanem

Większość stron PDF-u nie zawiera warstwy tekstowej. Odczytuj obraz skanu lub weryfikuj OCR z obrazem. Nie traktuj błędów OCR jako treści autora.

Wstępne strony skanu się powtarzają: przedmowa znajduje się na stronach PDF 24–26 (duplikat: 16–18), nota po niej na stronie 27 (duplikat: 19), spis treści na stronie 28 (duplikat: 20). Rozdział I zaczyna się na stronie PDF 30, drukowanej jako 1. Numery PDF liczymy od 1. Nie tłumacz powtórzonych stron drugi raz.

## Odporność na przerwanie i wznawianie

- Kompaktuj kontekst rozmowy, gdy jest to potrzebne i dostępne. Przed kompakcją zapisz na dysku bieżący tekst, punkt wznowienia, ustalenia i niewykonane kontrole; nie polegaj na samej historii rozmowy.
- Zakładaj, że limit tokenów lub awaria może przerwać pracę w dowolnej chwili. Zapisuj ukończone akapity na dysku na bieżąco, najpóźniej po 1–2 stronach źródła. Nie pozostawiaj większej partii przekładu wyłącznie w rozmowie lub pamięci agenta.
- Po każdym zapisanym fragmencie aktualizuj `POSTEP.md`: plik rozdziału, zakres stron PDF i druku, ostatni ukończony akapit (krótki cytat z oryginału), dokładne miejsce kontynuacji, stan porównania ze skanem i pozostałe kontrole. Najpierw zapisz tekst, potem stan, aby ewentualne przerwanie nie zawyżyło postępu.
- Oddzielaj statusy: zapisany przekład, przekład sprawdzony ze skanem, wygenerowane eksporty, przegląd wizualny i utworzony PR. Nie oznaczaj części jako gotowej, dopóki wymagane kontrole się nie zakończą.
- Przy wznowieniu przeczytaj `POSTEP.md`, `PLAN-TLUMACZENIA.md`, `REVIEW.md` i `git status --short`, a następnie porównaj zapisany koniec rozdziału ze źródłem. Pliki na dysku są rozstrzygające, jeśli przerwanie nastąpiło między zapisem tekstu a aktualizacją postępu.
- Zapisuj istotne wątpliwości i ustalenia od razu w `REVIEW.md` oraz `TERMINOLOGIA.md`. Pliki tymczasowe i wiadomości agentów nie mogą być jedynym miejscem przechowywania potrzebnych ustaleń.
- Zapisuj rzeczywiste czasy etapów i przerw, jeśli zadanie obejmuje oszacowanie czasu. Przerw wynikających z limitów nie traktuj jako czasu aktywnej pracy.
- Od 2026-10-28 zakres obejmuje całą pozostałą książkę, wraz z zaległą przedmową i notą. Wiadomość „kontynuuj” oznacza wznowienie tego zadania od zapisanego miejsca, bez ponownego uzgadniania zakresu.
- Przy pracy równoległej każdy agent zapisuje własny punkt wznowienia i uwagi w osobnym pliku `postep/rozdzial-NN.md`. Agent prowadzący scala stan w `POSTEP.md`, a ustalenia terminologiczne i uwagi w plikach wspólnych. Nie nadpisuj plików innego agenta.

## Generowanie i weryfikacja

Po każdej zmianie treści książki, przed utworzeniem pull requesta, obowiązkowo uruchom:

```bash
make pdf
test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf
```

Jeśli generowanie się nie powiedzie, najpierw ustal i napraw przyczynę. Nie twórz PR-a z błędem generowania. Obejrzyj zmienione strony PDF-u.

Przed PR-em wygeneruj pozostałe formaty i sprawdź stan repozytorium:

```bash
make book
git diff --check
git status --short
```

Zmienione pliki w `build/` i `docs/` dołącz do tego samego commita i PR-a co odpowiednie zmiany Markdownu. Po zmianach w porównywarce uruchom `make test`.

W środowisku Codex używaj bezpośrednio `make pdf`, bez `generate.sh` i Podmana. Zachowuj plik źródłowy bez zmian. Nie nadawaj tłumaczeniu licencji ani wydawcy bez ustalenia z użytkownikiem.

## Kończenie pracy

Po zmianach w repozytorium utwórz pull request i zakończ odpowiedź bezpośrednim, klikalnym linkiem. Przed podaniem linku zweryfikuj przez GitHub CLI lub API, że PR rzeczywiście istnieje, jest otwarty oraz wskazuje właściwe repozytorium i gałęzie. Sam tytuł i opis nie oznaczają utworzenia PR-a.

## Working with rate limits
I have rate limits, always be prepared that you're work may be interrupted out of the sudden, and that you'll need to continue after rate limits reset.
