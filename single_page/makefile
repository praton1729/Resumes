
Resume.pdf: Resume.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make Resume.tex
read:
	mupdf -r 100 Resume.pdf
clean:
	latexmk -CA
