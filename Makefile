TEX_INPUTS = $(wildcard *.tex)

all: paper.pdf

paper.pdf: $(TEX_INPUTS) paper.bib
	pdflatex paper
	bibtex paper
	pdflatex paper
	pdflatex paper

