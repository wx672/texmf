LATEX = xelatex
FLAGS = --shell-escape

png: keys.pdf
	pdftocairo -r 250 -png keys.pdf 
pdf: keys.tex
	$(LATEX) $(FLAGS) keys.tex 

clean:
	latexmk -c
