# Build Latex in Docker

## Setup 
```
make setup
```
* gets the apline image
* installs texlive
* copy fonts into container

## Build
```
make build
```
* runs lualatex on every .tex file in the CV Folder
* all outputs are in CV/output
