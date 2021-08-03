all: html rmhtml pdf

html:
	quarto render

pdf:
	quarto render --to pdf

rmhtml:
	# RMarkdown insists on the file extension.
	cp intro.qmd intro.Rmd
	Rscript -e "rmarkdown::render('intro.Rmd', output_file='rmintro.html')"
	rm intro.Rmd
