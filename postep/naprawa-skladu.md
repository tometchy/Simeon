# Końcowe naprawy składu PDF

- 2026-11-08: metadane agenta `finish_pdf_layout` potwierdzone jako `gpt-6-astra` / `ultra`.
- Zakres: wyłącznie skład i kontrola eksportu, bez zmian treści przekładu. Pliki robocze: `filters/line-breaks.lua`, `templates/pdf.latex`.
- Zastąpiono nieskuteczne środowisko `samepage` przez `minipage` o bieżącej szerokości cytatu. Zachowano bieżące odstępy i wcięcia akapitów. Dwa istniejące bloki `.keep-together` obejmują datę, zwrot do adresata i pierwszy akapit listu w rozdziale IV.
- Do sprawdzenia: wspólna strona początku listów Thorntona i Venna, dzielenie „Wspomnieniach”, „dwudziestoośmioletniego” i „podporządkowaniu” po wcześniejszym przeniesieniu wyjątków za `\begin{document}`, budowanie PDF i przegląd zmienionych stron.
- Punkt wznowienia: uruchomić `make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf`, zbadać bbox i wyrenderować zmienione strony. PR i pozostałe eksporty prowadzi agent główny.

## Wynik kontroli napraw

- `make pdf` zakończone powodzeniem, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf` przeszedł. Eksport zachował 176 stron.
- Wyjątki `\hyphenation` umieszczone bezpośrednio po `\begin{document}` działają: na PDF 73 podział „Wspom-nieniach”, na PDF 74 „dwudziestoośmio-letniego”, na PDF 121 „podporządkowa-niu”. Nie zmieniono treści przekładu ani konfiguracji fontów.
- Początek listu Thorntona (data, zwrot do adresata i pierwszy akapit) znajduje się teraz na PDF 29, analogiczny początek listu Venna na PDF 32. Zachowane szerokość cytatu i odstępy akapitów.
- Obejrzano całe strony PDF 28–32, 73, 74 i 121 po poprawkach: układ czytelny, brak obcięcia treści i nakładania elementów; daty nie są oddzielone od początków listów.
- Kontrola bbox wszystkich 176 stron: żaden wyraz nie przekracza xMax=480 pkt. Największe xMax=479,789 pkt dotyczy końcowego znaku interpunkcyjnego na PDF 153 (dopuszczalne wysunięcie optyczne).
- Zmiana podziału listów przesunęła także dalszą treść: względem poprzedniego eksportu (`bbox-after.html`) zmieniły się PDF 28–134. Względem wersji obejrzanej w całości (`bbox-before.html`) różnią się PDF 14, 20, 28–135, 138–153, 162, 169–171 i 175.
- Kontynuacja: agent główny rozdzieli ponowny przegląd wszystkich 176 stron końcowego eksportu, wykona `make book` i przygotuje publikację. Nie utworzono PR-a w ramach tego zadania.
- Odtwarzalne materiały przeglądu: `/tmp/simeon-final-qa/fixed/page-001.png` do `page-176.png` (1500 pikseli wysokości), kontakty po cztery strony pod `contact-NNN.png`. Bbox: `/tmp/simeon-final-qa/bbox-fixed.html`.
