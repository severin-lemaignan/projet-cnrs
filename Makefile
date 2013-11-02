
TARGET=project.rst

DOT=$(wildcard images/*.dot)
SVG=$(wildcard images/*/*.svg)

all: project

%.tex: %.rst
	rst2latex $(<) > $(@)

%.pdf: %.svg
	inkscape --export-pdf $(@) $(<)

%.aux: project

%.svg: %.dot

	twopi -Tsvg -o$(@) $(<)

bib: $(TARGET:.rst=.aux)

	bibtex $(<)

project: $(TARGET:.rst=.tex) $(SVG:.svg=.pdf) $(DOT:.dot=.pdf)

	TEXFONTS=:./fonts TEXINPUTS=:./fonts:./sty pdflatex $(TARGET:.rst=.tex)

clean:
	rm -f *.bbl *.blg *.aux *.log *.snm *.out *.toc *.nav *intermediate *~ *.glo *.ist $(TARGET:.rst=.tex) $(SVG:.svg=.pdf) $(DOT:.dot=.svg) $(DOT:.dot=.pdf)

distclean: clean
	rm -f $(TARGET:.rst=.pdf)
