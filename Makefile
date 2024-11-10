# Tools
RM = rm -fr	

# Project-specific settings
DOCNAMES = thesis seminar_hasil seminar_proposal sidang_skripsi

# Targets
all: doc
doc: pdf
pdf: $(DOCNAMES:=.pdf)

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
	$(RM) $(addprefix ./_minted-,$(DOCNAMES))

.PHONY: all clean doc mostlyclean pdf