# -------------------------------------------------------
# Makefile for AIChE abstract
# Targets:
#   make pdf   — compile PDF draft (requires pdflatex + biber)
#   make txt   — export plain text for AIChE submission
#   make clean — remove build artifacts
#   make all   — pdf + txt
# -------------------------------------------------------

TEX      = abstract
BIB      = abstract.bib
CSL      = style.csl
OUTDIR   = output

.PHONY: all pdf txt clean

all: txt

# --- Plain-text export for submission --------------------
txt:
	@mkdir -p $(OUTDIR)
	pandoc $(TEX).tex \
	  --citeproc \
	  --bibliography=$(BIB) \
          --wrap=none \
          --csl=$(CSL) \
	  -t plain \
	  -o abstract.txt
	@echo "✓  Plain text written to abstract.txt"
	@echo "Generated plain text:"
	@echo "----------------------------------------------------------"
	@cat abstract.txt
	@echo "----------------------------------------------------------"

# --- Cleanup ---------------------------------------------
clean:
	rm -f $(TEX).aux $(TEX).bbl $(TEX).bcf $(TEX).blg \
	      $(TEX).log $(TEX).out $(TEX).run.xml $(TEX).pdf \
	      $(TEX).fdb_latexmk  $(TEX).fls
	rm -rf $(OUTDIR)
