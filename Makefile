.PHONY: main clean FORCE

main: poster.pdf abstract.pdf

poster.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf poster.tex

abstract.pdf: FORCE
	latexmk -pdflatex='lualatex -interaction nonstopmode' -pdf abstract.tex

clean:
	latexmk -pdf -C
