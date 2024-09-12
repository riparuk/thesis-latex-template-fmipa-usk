# Tools
RM = rm -fr	

# Project-specific settings
DOCNAME = thesis

# Targets
all: doc
doc: pdf
pdf: $(DOCNAME).pdf

# Rules
%.pdf: %.tex
	pdflatex -shell-escape $*.tex
	pdflatex -shell-escape $*.tex
	pdflatex -shell-escape $*.tex

mostlyclean:
	$(RM) ./*.bbl

clean: mostlyclean
	$(RM) ./*.run.xml out/*.synctex.gz
	$(RM) ./*.dvi ./*.log ./*.aux ./*.blg ./*.toc ./*.lof ./*.lot ./*.out ./*.bcf ./*.run.xml ./*.synctex.gz ./*.pdf
	$(RM) ./_minted-$(DOCNAME)

.PHONY: all clean doc mostlyclean pdf