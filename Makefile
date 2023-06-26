
main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex
read:
	mupdf -r 100 main.pdf
clean:
	latexmk -CA
