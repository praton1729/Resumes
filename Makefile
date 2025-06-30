
default: main.pdf

main.tex: header.tex education.tex work_exp.tex projects.tex tech_skills.tex achievements.tex certifications.tex
	touch $@

main.pdf: main.tex
	latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" -use-make $^
read:
	mupdf -r 100 main.pdf
clean:
	latexmk -CA
