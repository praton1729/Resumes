
main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make main.tex
read:
	zathura main.pdf
clean:
	latexmk -C
