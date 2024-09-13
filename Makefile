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
	pdflatex -shell-escape $*.tex  # Run twice to ensure references are updated
	biber $*  # Run biber on the basename of the file (e.g., thesis)
	pdflatex -shell-escape $*.tex  # Run a third time to incorporate bibliography
	pdflatex -shell-escape $*.tex  # Run a fourth time to ensure all references are correct

mostlyclean:
	$(RM) ./*.bbl

clean: mostlyclean
	$(RM) ./*.run.xml out/*.synctex.gz
	$(RM) ./*.dvi ./*.log ./*.aux ./*.blg ./*.toc ./*.lof ./*.lot ./*.out ./*.bcf ./*.run.xml ./*.synctex.gz ./*.pdf
	$(RM) ./_minted-$(DOCNAME)

.PHONY: all clean doc mostlyclean pdf