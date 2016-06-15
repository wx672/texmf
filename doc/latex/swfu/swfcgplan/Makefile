LATEX = xelatex
FLAGS = --shell-escape

%.pdf: %.tex
	if $(LATEX) $(FLAGS) $(patsubst %.pdf,%,$@) ; fgrep "Rerun to get cross-references right" $(patsubst %.pdf,%.log,$@) ; then $(LATEX) $(FLAGS) $(patsubst %.pdf,%,$@); fi

clean:
	rm -rf auto *~ *.aux *.bbl *.blg *.bcf *.run.xml *.log *.out *.nav *.toc *.snm *.vrb _region_.* ../figs/*.aux ../figs/*.log ../figs/*.out ../figs/*~ *.pyg *gz
