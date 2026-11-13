# Kontrola wizualna końcowego PDF-u — strony 1–44

- Data: 2026-11-07.
- Agent: `/root/pdf_qa_1`.
- Metadane bieżącej tury zweryfikowane w lokalnym pliku sesji: `gpt-6-astra`, `effort: ultra`, tura `01a1b4d6-e248-7ab3-9b74-c542a34c6673`.
- Sprawdzony plik: `build/pdf/Charles-Simeon-H-C-G-Moule.pdf`, 176 stron.
- SHA256 sprawdzonej wersji: `8a5b7672bf277766765a674b29d2568ae90cfabce064b96fbac9253deea74d4d`.
- Zakres: wszystkie strony PDF 1–44, czyli strona tytułowa ze spisem treści, przedmowa i nota, rozdziały I–IV oraz początek V.
- Metoda: ręczne obejrzenie jedenastu arkuszy czterostronicowych (`contact-001`, `005`, `009`, `013`, `017`, `021`, `025`, `029`, `033`, `037`, `041`) w `view_image`, następnie osobnych obrazów stron 6, 17, 28 i 31. Renderingi w `/tmp/simeon-final-qa/` są tylko materiałem odtwarzalnym.

## Wynik

Tekst, marginesy, paginacja i przypisy pozostają czytelne na całym przydzielonym zakresie. Nie stwierdzono obciętego tekstu, nachodzenia elementów, niezamierzonych pustych stron ani brakujących glifów. Hierarchia tytułów jest spójna; nagłówki rozdziałów mają pod sobą tekst. Wiersze zachowują układ wersowy. Cytaty greckie na stronach 6 i 17 obejrzano osobno: kursywa, znaki diakrytyczne i pełne wiersze wyświetlają się prawidłowo. Greka rozdziału V znajduje się na stronie PDF 50, poza zakresem tej kontroli.

## Usterki rozmieszczenia przekazane prowadzącemu

| Strona PDF | Obserwacja | Zalecenie | Status |
| --- | --- | --- | --- |
| 28–29 | Na dole strony 28 pozostają data listu Thorntona „Clapham, 13 listopada, 1782.” i zwrot „Drogi Panie,”. Treść listu rozpoczyna się na stronie 29. | Powiązać datę i zwrot grzecznościowy z początkiem pierwszego akapitu, aby początek listu nie pozostawał osamotniony. | Do poprawienia przez prowadzącego i ponownego obejrzenia po eksporcie. |
| 31–32 | Na dole strony 31 pozostają data listu Venna „Yelling, 6 sierpnia, ’84.” i zwrot „Mój Drogi Przyjacielu,”. Treść listu rozpoczyna się na stronie 32. | Powiązać datę i zwrot grzecznościowy z początkiem pierwszego akapitu. | Do poprawienia przez prowadzącego i ponownego obejrzenia po eksporcie. |

## Punkt wznowienia

Kontrola wersji o powyższej sumie zakończona dla wszystkich stron 1–44. Dalsza praca w tym zakresie: po decyzji prowadzącego i poprawkach składu obejrzeć nowe przejścia listów oraz strony, na których zmieni się łamanie. Nie wykonywano zmian treści książki ani ponownego eksportu. Raport nie stanowi potwierdzenia kontroli późniejszej wersji PDF-u.
