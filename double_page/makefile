
Resume.pdf: Resume.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make Resume.tex
read:
	evince Resume.pdf
clean:
	latexmk -CA
