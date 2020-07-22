# Build Latex in Docker

## Setup 
```
make setup
```
* gets the apline image
* installs texlive
* copy fonts into container

## Build all \*.tex Files
```
make build
```
* runs lualatex on every .tex file in the CV Folder
* all outputs are in CV/output

### build only listed files
```
FILE="example.tex foo.tex bar.tex" make build
```


## Credits

inspired by https://github.com/simonschiele/curriculum-vitae and https://gitlab.com/mruediger/cv 
