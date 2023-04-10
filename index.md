---
title: "R-Bookdown with Python and SQL on Github Pages"
github-repo: tillwf/r-bookdown-python-sql-github-pages
url: 'http\://github.com/tillwf'
description: "This repository is meant for people who wants the minimal installation guide to make R-bookdown on Github Pages which can run Python and SQL."
output: bookdown::gitbook
---

# Local installation

[Bookdown Reference](https://bookdown.org/yihui/bookdown/)

[Make it look nice](https://github.com/kflisikowski/statswithr/blob/master/docs/cookbook-bookdown_dress.md)


## Intall `R` and its packages

```bash
sudo apt install r-cran-bookdown
```

## Install Python with a shared library

```bash
CONFIGURE_OPTS=--enable-shared pyenv install 3.10.6
```

## Install packages

```bash
python -m venv venv
source venv/bin/activate
pip install -U pip
pip install -r requirements.txt
Rscript -e "library(reticulate); py_install('pandas==1.5.3')"
```

# Github deployement

## Python version

For the moment, I don't know how to change the version used by Github.
Thus the current is `3.10.6`.


## Ubuntu version

In the `build-book.yaml`, the property `runs-on` is `22.04`, but when it was `20.04` Github was still using the version `22.04`.
