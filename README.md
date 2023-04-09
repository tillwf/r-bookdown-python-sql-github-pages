## Local installation

### Intall `R` and its packages


### Install Python with a shared library

```bash
CONFIGURE_OPTS=--enable-shared pyenv install 3.10.6
```

### Install packages

```
python -m venv venv
source venv/bin/activate
pip install -U pip
pip install -r requirements.txt
```

## Github deployement

### Python version

For the moment, I don't know how to change the version used by Github.
Thus the current is `3.10.6`.


### Ubuntu version

In the `build-book.yaml`, the property `runs-on` is `22.04`, but when it was `20.04` Github was still using the version `22.04`.
