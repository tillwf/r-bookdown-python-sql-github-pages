gitbook:
	rm -f _main.Rmd &&\
	Rscript -e "bookdown::render_book('index.Rmd')" &&\
	chromium-browser til-bookdown.html

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
