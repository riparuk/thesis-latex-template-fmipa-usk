# Tools
RM = rm -fr	

# Project-specific settings
DOCNAMES = thesis seminar_hasil seminar_proposal sidang_skripsi

# Default Targets
all: doc
doc: pdf
pdf: $(DOCNAMES:=.pdf)

# Individual document targets
thesis: thesis.pdf
hasil: seminar_hasil.pdf
proposal: seminar_proposal.pdf
skripsi: sidang_skripsi.pdf

# Rules for compiling .pdf from .tex
%.pdf: %.tex
	pdflatex -shell-escape $*.tex
	pdflatex -shell-escape $*.tex  # Run twice to ensure references are updated
	biber $*  # Run biber on the basename of the file (e.g., thesis)
	pdflatex -shell-escape $*.tex  # Run a third time to incorporate bibliography
	pdflatex -shell-escape $*.tex  # Run a fourth time to ensure all references are correct

# Cleaning intermediate files
mostlyclean:
	$(RM) ./*.bbl

clean: mostlyclean
	$(RM) ./*.run.xml out/*.synctex.gz
	$(RM) ./*.dvi ./*.log ./*.aux ./*.blg ./*.toc ./*.lof ./*.lot ./*.out ./*.bcf ./*.run.xml ./*.synctex.gz ./*.pdf
	$(RM) $(addprefix ./_minted-,$(DOCNAMES))

# Add Phony targets to avoid filename conflicts
.PHONY: all clean doc mostlyclean pdf thesis hasil proposal skripsi