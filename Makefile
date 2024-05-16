output/cv.pdf: main.tex
	latexmk -pdf -outdir="output/" main.tex

all: output/cv.pdf

.PHONY clean:
ifeq ($(OS),Windows_NT)
	-rmdir /s /q output
else
	-rm -rf output
endif
