all: clean thesis clean_post
#	okular diplomski.pdf &

thesis: diplomski.tex literatura.bib
	xelatex diplomski.tex
	bibtex diplomski
	xelatex diplomski.tex
	xelatex diplomski.tex
	touch diplomski.aux

clean:
	rm -f diplomski.aux diplomski.bbl diplomski.blg diplomski.toc diplomski.log

# because `make` doesn't allow executing the same target twice in a run
clean_post:
	rm -f diplomski.aux diplomski.bbl diplomski.blg diplomski.toc diplomski.log

clean_all: clean
	rm -f *.pdf
