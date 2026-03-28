# AIChE Abstract Template

Write your abstract in LaTeX, export as plain text for AIChE submission.

## Quickstart

```bash
# 1. Edit the abstract
code abstract.tex

# 2. Edit references
code abstract.bib

# 3. Build txt draft
make 
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
