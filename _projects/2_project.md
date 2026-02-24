---
layout: page
title: BibSanity
description: A CLI tool that checks BibTeX entries against Crossref/OpenAlex and reports likely metadata issues.
img: assets/img/BibSanity.png
importance: 2
# category: work
github: https://github.com/Y1kee/BibSanity
---

**BibSanity** is a small command-line tool to sanity-check BibTeX entries: it verifies citations against Crossref and OpenAlex and flags invalid or inconsistent metadata.

**Features:**

- **Verification**: DOI lookup via Crossref; fallback title search via OpenAlex with fuzzy matching. Compares title, year, and authors.
- **Output**: Terminal (Rich tables), JSON, and HTML reports. Reports are saved under `Sanity_Report/` next to the input file.
- **Performance**: Caches API responses and verifies entries in parallel. Status codes: OK / WARN / FAIL with clear reasons.

**Install & run:**

```bash
pip install bibsanity
bibsanity references.bib
```

Options: `--format json|html|all`, `--strict` (treat warnings as failures), `--max-workers N`, `--no-cache`. Exit code 0 when no FAIL; 1 on errors or FAILs.

Useful for keeping bibliography files correct before submission or when maintaining shared `.bib` files. MIT licensed.

Code and docs: [GitHub — Y1kee/BibSanity](https://github.com/Y1kee/BibSanity).
