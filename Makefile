all: html rmhtml pdf

html:
	quarto render . --no-cache

pdf:
	quarto render . --to pdf --no-cache

rmhtml:
	Rscript -e "rmarkdown::render('rmintro.Rmd', output_file='rmintro.html')"
	Rscript -e "rmarkdown::render('rmintro.Rmd', output_file='rmintro.pdf')"

clean:
	rm -rf .quarto _book/ *.html
