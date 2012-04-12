PDFLATEX = pdflatex
BIBTEX = bibtex
TARGETS = resume

all: $(TARGETS:%=%.pdf)

%.pdf: %.tex
	$(PDFLATEX) $<

clean:
	rm -f $(TARGETS:%=%.pdf) $(TARGETS:%=%.log) $(TARGETS:%=%.aux)
	rm -f $(TARGETS:%=%.bbl) $(TARGETS:%=%.blg)
