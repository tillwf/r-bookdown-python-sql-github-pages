rm -f _main.Rmd
Rscript -e "bookdown::render_book('index.Rmd')"
chromium-browser public/index.html
