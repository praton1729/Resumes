
default: main.pdf

main.tex: header.tex work_exp.tex courses.tex tech_skills.tex por.tex
	touch $@

main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $^
read:
	mupdf -r 100 main.pdf
clean:
	latexmk -CA
