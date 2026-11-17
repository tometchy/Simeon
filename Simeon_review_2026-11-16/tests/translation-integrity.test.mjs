import assert from "node:assert/strict";
import { readFileSync, readdirSync } from "node:fs";
import { test } from "node:test";
import { fileURLToPath } from "node:url";

const chaptersDir = fileURLToPath(new URL("../chapters/", import.meta.url));
const expectedFiles = [
  "01-przedmowa.md",
  "02-rozdzial-01-rodzina-i-szkola.md",
  ...Array.from({ length: 16 }, (_, index) =>
    `${String(index + 3).padStart(2, "0")}-rozdzial-${String(index + 2).padStart(2, "0")}.md`
  ),
];
const chapters = readdirSync(chaptersDir)
  .filter((file) => file.endsWith(".md"))
  .sort()
  .map((file) => ({ file, text: readFileSync(`${chaptersDir}/${file}`, "utf8") }));
const romanNumbers = [
  "I", "II", "III", "IV", "V", "VI", "VII", "VIII", "IX",
  "X", "XI", "XII", "XIII", "XIV", "XV", "XVI", "XVII",
];

test("przedmowa i siedemnascie rozdzialow wystepuja we wlasciwej kolejnosci", () => {
  assert.deepEqual(chapters.map(({ file }) => file), expectedFiles);
  for (const [index, { file, text }] of chapters.entries()) {
    const heading = text.match(/^# (.+)$/m)?.[1];
    const expected = index === 0 ? "Przedmowa" : `${romanNumbers[index - 1]}.`;
    assert.ok(
      index === 0 ? heading === expected : heading?.startsWith(expected),
      `${file}: nieoczekiwany naglowek: ${heading}`
    );
  }
});

test("przypisy maja unikalne definicje i kompletne odsylacze", () => {
  const definitions = new Map();
  const references = new Set();
  for (const { file, text } of chapters) {
    for (const match of text.matchAll(/^\[\^([^\]]+)\]:/gm)) {
      const id = match[1];
      assert.ok(
        !definitions.has(id),
        `Powtorzona definicja ${id}: ${definitions.get(id)} i ${file}`
      );
      definitions.set(id, file);
    }
    const withoutDefinitionLines = text.replace(/^\[\^([^\]]+)\]:[^\n]*$/gm, "");
    for (const match of withoutDefinitionLines.matchAll(/\[\^([^\]]+)\]/g)) {
      references.add(match[1]);
    }
  }
  assert.ok(definitions.size > 0, "Brak definicji przypisow");
  for (const id of references) {
    assert.ok(definitions.has(id), `Brakuje definicji przypisu: ${id}`);
  }
  for (const id of definitions.keys()) {
    assert.ok(references.has(id), `Nieodwolany przypis: ${id}`);
  }
});

test("widoczny tekst nie zawiera roboczych markerow", () => {
  for (const { file, text } of chapters) {
    const visibleText = text.replace(/<!--[\s\S]*?-->/g, "");
    assert.doesNotMatch(visibleText, /\b(?:TODO|FIXME|TBD)\b/i, file);
  }
});
