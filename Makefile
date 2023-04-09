all:
	rm -f _book/*.html &&\
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R

pdf:
	Rscript --quiet _render.R "bookdown::pdf_book" &&\
	rm -f css/box.css latex/blackbox.tex latex/infobox.tex &&\
	mv _book/rmarkdown-cookbook.pdf _book/rmarkdown-cookbook-full.pdf &&\
	open _book/rmarkdown-cookbook-full.pdf

gitbook:
	rm -f _main.Rmd &&\
	Rscript -e "bookdown::render_book('index.Rmd')" &&\
	chromium-browser til-bookdown.html

pdf2:
	BOOKDOWN_FULL_PDF=false Rscript --quiet _render.R "bookdown::pdf_book"

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
