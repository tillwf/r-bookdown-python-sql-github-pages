gitbook:
	Rscript -e "bookdown::render_book('index.Rmd')" &&\
	chromium-browser public/index.html

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
