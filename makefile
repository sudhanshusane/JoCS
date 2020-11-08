
SHELL = /bin/sh

all: sane_jocs.pdf

sane_jocs.pdf: *.tex 
	pdflatex sane_jocs
	pdflatex sane_jocs
	bibtex sane_jocs
	touch sane_jocs.tex
	pdflatex sane_jocs
	pdflatex sane_jocs


clean:
	if (rm -f *.log *.aux *.bbl *.blg *.out *.toc *.dvi *.ps *.brf *.lbl sane_jocs.pdf) then :; fi

