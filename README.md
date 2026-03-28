# AIChE Abstract Template

Write your abstract in LaTeX, export as plain text for AIChE submission.

## Quickstart

```bash
# 1. Edit the abstract
vim abstract.tex

# 2. Edit references
vim bib/refs.bib

# 3. Build PDF draft
make pdf

# 4. Export plain text for submission
make txt
# → output/abstract_submission.txt
```

## Structure

```
.
├── abstract.tex          # ← main file: write your abstract here
├── bib/
│   └── refs.bib          # ← add your BibTeX references here
├── csl/
│   └── american-chemical-society.csl   # citation style
├── output/
│   └── abstract_submission.txt         # generated plain-text output
└── Makefile              # build targets: pdf, txt, clean
```

## Requirements

| Tool | Install |
|------|---------|
| `pdflatex` + `biber` | TeX Live / MacTeX |
| `pandoc` ≥ 3.0 | [pandoc.org](https://pandoc.org/installing.html) |

On macOS:
```bash
brew install --cask mactex
brew install pandoc
```

On Ubuntu/Debian:
```bash
sudo apt install texlive-full pandoc
```

## Swapping citation style

Replace `csl/american-chemical-society.csl` with any `.csl` file from
[zotero.org/styles](https://www.zotero.org/styles), then update the
`CSL` variable in the `Makefile`.

## Tips

- Keep all citations as `\cite{key}` — pandoc resolves them at export time.
- The `output/` directory is gitignored; check in only source files.
- Run `make clean` to remove all build artifacts.
