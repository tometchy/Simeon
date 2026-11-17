#!/usr/bin/env python3
"""Apply focused proofreading changes to the local tometchy/Simeon repository.

Run from the repository root. Fail without changing anything if originals differ.
"""
from pathlib import Path
import sys

CORRECTIONS = {
    'chapters/01-przedmowa.md': [
        ('Wiele wdzięczności winien jestem Provostowi',
         'Serdecznie dziękuję Provostowi'),
        ('Wielu osobom winien jestem szczególne podziękowanie',
         'Wielu osobom jestem winien szczególne podziękowania'),
    ],
    'chapters/02-rozdzial-01-rodzina-i-szkola.md': [
        ('Simeon, według słów jego własnego wspomnienia, „pomyślał, że jeśli ktoś bardziej niż inni wywołał niezadowolenie Boga, to byłem nim ja.',
         'Simeon wspominał: „Pomyślałem, że jeśli ktoś bardziej niż inni wywołał niezadowolenie Boga, to byłem nim ja.'),
    ],
    'chapters/14-rozdzial-13.md': [
        ('Mój drogi Panie Simeonie, Mój brat zapewne opowiedział',
         'Mój drogi Panie Simeonie, mój brat zapewne opowiedział'),
    ],
}

def main():
    root = Path.cwd()
    if not (root / 'AGENTS.md').is_file() or not (root / 'chapters').is_dir():
        sys.exit('Uruchom skrypt w katalogu głównym repozytorium Simeon.')
    results = {}
    for name, replacements in CORRECTIONS.items():
        path = root / name
        source = path.read_text(encoding='utf-8')
        edited = source
        for old, new in replacements:
            count = edited.count(old)
            if count != 1:
                sys.exit(f'Nie zmieniono żadnego pliku. Oczekiwano 1 wystąpienia, znaleziono {count}: {name}: {old[:75]}')
            edited = edited.replace(old, new, 1)
        results[path] = edited
    for path, edited in results.items():
        path.write_text(edited, encoding='utf-8')
        print(f'Poprawiono: {path.relative_to(root)}')
    src = Path(__file__).resolve().parent
    for rel in ['tests/translation-integrity.test.mjs', 'postep/review-redakcyjny-2026-11-16.md']:
        target = root / rel
        if target.exists():
            sys.exit(f'Zmiany w rozdziałach zapisano, ale {rel} już istnieje. Nie nadpisano go.')
        target.parent.mkdir(parents=True, exist_ok=True)
        target.write_bytes((src / rel).read_bytes())
        print(f'Dodano: {rel}')
    print('Zakończono. Uruchom make pdf && make book && make test, sprawdź PDF i dopiero commit/PR.')

if __name__ == '__main__':
    main()
