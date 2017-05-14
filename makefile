# makefile for CPVC.tex

CPVC.pdf: CPVC.tex biblio.bib src/origin/1/hakee.tex 
	latexmk -xelatex -synctex=1 CPVC.tex

src/origin/1/hakee.tex: src/origin/1/hakee.ori src/origin/1/hakee.gnu
	gnuplot src/origin/1/hakee.gnu

clean:
	rm src/origin/1/hakee.tex
	#latexmk -C
	rm *.aux *.blg *.bbl *.fdb_latexmk *.fls *.idx *.ilg *.ind *.log *.nav *.out *.snm *.synctex.gz *.toc *.xdv

