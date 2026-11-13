# Końcowe kontrole techniczne eksportów

## Aktualna wersja po związaniu podpisów — sprawdzona 2026-11-13

Własne metadane prowadzącego potwierdzone jako `gpt-6-astra` / `ultra`. PDF i pozostałe formaty wygenerowano 2026-11-12 po dodaniu `.keep-with-previous` przy trzech podpisach listów. `make pdf`, `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf` i `make book` ponownie wywołane 2026-11-13 potwierdziły aktualność eksportów.

| Plik | SHA256 |
| --- | --- |
| `build/pdf/Charles-Simeon-H-C-G-Moule.pdf` | `cd1eaae0728474d1cfa5b2e9a288dcdd84253dfd2766f577c0fcc780c30612f7` |
| `build/epub/Charles-Simeon-H-C-G-Moule.epub` | `d3a98e334881f347cc11a032660c202b086201ef2873383b298a011b403ae431` |
| `build/docx/Charles-Simeon-H-C-G-Moule.docx` | `c660f3a50ade890aed78adb3466be37aca8470e7ca19228ef3450d98e1d653ec` |
| `docs/index.html` | `1e8c53e45c60c8d0e9f4bed9c1af133f7dfe018a44c350caa86871ed6ee24d5c` |

- Ponownie sprawdzono 18 plików Markdown: 125 unikalnych definicji i 125 odsyłaczy, zbiory zgodne.
- EPUB: archiwum bez uszkodzeń, 24 poprawne pliki XML/XHTML/OPF/NCX, 125 przypisów; greka i końcowa inskrypcja obecne.
- DOCX: archiwum bez uszkodzeń, 13 poprawnych plików XML, 125 przypisów i 125 odsyłaczy; greka i końcowa inskrypcja obecne.
- HTML: 125 przypisów i odsyłaczy, zakończenie obecne, kolofon źródła niewidoczny jako komentarz.
- PDF: nadal 176 stron, brak wyrazów poza marginesami x=131–480 pkt. Porównanie bbox z wersją `807f65e…` wykazało zmiany wyłącznie PDF52–54 i PDF122–176. Pozostałe 118 stron ma identyczne teksty i współrzędne.
- `make test`: 1 test przeszedł, `git diff --check`: bez błędów. Skan źródłowy ma niezmieniony blob `1ad0beeeadd47e61734d1f036e0ab8f92803ac14`.
- Przegląd wizualny wszystkich 58 zmienionych stron zakończony 2026-11-13: PDF52–54 i PDF122–139 w `pdf-podpisy-a-20261113.md`, PDF140–158 w `pdf-podpisy-b-20261113.md`, PDF159–176 w `pdf-podpisy-c-20261113.md`. Bez usterek wymagających poprawy. Trzy podpisy pozostają z końcówkami listów, inskrypcja i kapitaliki czytelne. Pozostałe 118 stron są identyczne według bbox i zostały obejrzane w poprzednim przeglądzie całości, udokumentowanym w `pdf-final-*.md`.
- Łączny status końcowej wersji: przekład i źródło sprawdzone, wszystkie eksporty aktualne i poprawne, przegląd wizualny całego PDF-u zakończony. Publikacja PR-a nadal wymaga URL docelowego repozytorium.
- Kontrola kompletnego indeksu z nowymi plikami: `git diff --cached --check` bez błędów. Ukończony przekład, eksporty i raporty zapisano lokalnie w commicie „Ukończ polski przekład Charles Simeon i sprawdź eksporty”. Po commicie potwierdzono czysty katalog roboczy.

## Historia kontroli sprzed związania podpisów — 2026-11-12

Prowadzący potwierdził własne metadane bieżącej tury: `gpt-6-astra` / `ultra`.

## Wersja poddana kontroli

| Plik | SHA256 |
| --- | --- |
| `build/pdf/Charles-Simeon-H-C-G-Moule.pdf` | `807f65e279ecc6230874857452f9e99590244a203a91a955e86d4fdceaedebe4` |
| `build/epub/Charles-Simeon-H-C-G-Moule.epub` | `b98746be19fdb2cafe623449dbddf6bdcc1f712a523dedea9eb6f42ac61e104c` |
| `build/docx/Charles-Simeon-H-C-G-Moule.docx` | `5a33d43302a36488095b98b3342eb51af8e3f578ab08403b3c1740bd33b65e38` |
| `docs/index.html` | `efd4d2912c811cd88dc97d0889b3d1acb179b6e71874f61e8639e0e925cd9c90` |

Eksporty powstały przed przerwaniem poprzedniej sesji: PDF 2026-11-07 o 23:19 UTC, pozostałe formaty o 23:22 UTC. Wywołane ponownie `make pdf` i `make book` potwierdziły aktualność wszystkich celów względem zależności (`Nothing to be done`). Kontrola `test -s build/pdf/Charles-Simeon-H-C-G-Moule.pdf` przeszła. Nie zmieniano treści książki w sesji 2026-11-12.

## Wyniki

- Markdown: 18 plików, 125 definicji przypisów o unikalnych identyfikatorach oraz 125 odsyłaczy, zbiory zgodne.
- EPUB: archiwum bez uszkodzeń, poprawne 24 pliki XML/XHTML/OPF/NCX, 125 przypisów. Greka i końcowa inskrypcja obecne.
- DOCX: archiwum bez uszkodzeń, poprawne 13 plików XML, 125 przypisów i 125 odsyłaczy. Greka i końcowa inskrypcja obecne.
- HTML: 125 przypisów i 125 odsyłaczy, końcowa inskrypcja obecna. Kolofon drukarni oryginału pozostaje komentarzem HTML, niewidocznym w tekście czytanym przez odbiorcę.
- PDF: 176 stron, analiza wszystkich wyrazów z `pdftotext -bbox` nie wykazała przekroczeń przedziału x=131–480 pkt. Analiza współrzędnych jest tylko uzupełnieniem odrębnego przeglądu wizualnego w `pdf-final-001-058.md`, `pdf-final-059-116.md` i `pdf-final-117-176.md`.
- `make test`: 1 test przeszedł, 0 błędów.
- `git diff --check`: bez błędów przed przygotowaniem commita; stan po dodaniu nowych plików sprawdza prowadzący przed commitem.
- Źródłowy `charlessimeon00moulgoog.pdf` niezmieniony: blob `1ad0beeeadd47e61734d1f036e0ab8f92803ac14` zgodny z HEAD.
- Koniec rozdziału XVII ponownie porównano z obrazem PDF307/druk276. Zapisane końcowe akapity i inskrypcja są kompletne.

## Publikacja

Gałąź lokalna: `codex/complete-polish-translation`. Brak remote. Ponowne sprawdzenie dostępnych repozytoriów połączonego GitHub 2026-11-12 nie wskazało projektu Simeon. Potrzebny URL właściwego repozytorium, a następnie sprawdzenie gałęzi bazowej; starsza lokalna historia dotyczy innej książki. Ten raport nie oznacza utworzenia PR-a.
