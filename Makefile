all: en de

en: en.tex
	pdflatex -output-directory="output/en" en.tex

de: de.tex
	pdflatex -output-directory="output/de" de.tex


.PHONY clean:
ifeq ($(OS),Windows_NT)
	-rmdir /s /q output
else
	-rm -rf output
endif
