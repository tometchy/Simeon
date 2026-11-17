# Pakiet korekt do tometchy/Simeon

**Dlaczego nie ma opublikowanego PR-a:** połączona instalacja GitHub (`159950173`) obejmuje tylko cztery wybrane repozytoria, a `tometchy/Simeon` nie jest jednym z nich. Wywołania zapisu gałęzi i drzewa kończą się błędem HTTP 403 `Resource not accessible by integration`.

**Umożliwienie PR-a:** w https://github.com/settings/installations/159950173 dodaj repozytorium `Simeon` do listy wybranych repozytoriów GitHub App.

## Zastosowanie lokalne

W katalogu repozytorium (na odrębnej gałęzi):

```bash
git switch -c review/translation-proofreading-2026-11-16
python3 /ścieżka/do/Simeon_review_2026-11-16/apply_review.py
make pdf
make book
make test
git diff --check
git status --short
```

Przejrzyj strony po zmianach i sprawdź wygenerowane formaty. Zatwierdź wszystkie zmodyfikowane pliki, **łącznie z `build/` i `docs/index.html`**. Pakiet nie nadpisuje oryginalnego skanu. Skrypt odmawia wykonania, jeśli spodziewane brzmienie fragmentów zostało już zmienione (nie jest idempotentny).

## Zakres

Cztery drobne korekty w trzech rozdziałach, nowy test integralności tekstu i raport z ograniczeniami. Nie jest to pełna nowa kolacja całego przekładu względem wszystkich stron skanu.
