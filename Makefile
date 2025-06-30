
default: main.pdf

main.tex : header.tex work_exp.tex tech_skills.tex course_projects.tex scholastic_achievements.tex
	@touch $@

main.pdf: main.tex
	@latexmk -silent -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex
read:
	@zathura main.pdf
clean:
	@latexmk -silent -C
