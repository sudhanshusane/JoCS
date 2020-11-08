SRC :=$(wildcard *.tex *.bib)

sane_jocs.pdf: $(SRC)
	pdflatex sane_jocs.tex
	bibtex sane_jocs.aux
	pdflatex sane_jocs.tex
	pdflatex sane_jocs.tex

clean:
	rm -f *.glo *.log *.dvi *.gls *.toc *.aux *.ist *.out *.glg sane_jocs.pdf *.bbl *.blg *.lof *.brf *.synctex.gz

.PHONY: clean
