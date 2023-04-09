gitbook: clean
	Rscript -e "bookdown::render_book()" &&\
	chromium-browser public/index.html

clean:
	Rscript -e 'bookdown::clean_book(TRUE)'
	rm -f db.sqlite
