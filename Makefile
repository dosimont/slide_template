# Makefile

TEX = xelatex

TEXDIR = tex
TEXSUBDIR = ${TEXDIR}

TEXSRC = $(wildcard *.tex)
TEXSUBSRC = $(wildcard $(TEXSUBDIR)/*.tex)
PDF = $(TEXSRC:.tex=.pdf)

TEXCOMPILE = $(TEX) $(TEXSRC)

all : clean $(PDF)

$(PDF) : $(TEXSRC) $(TEXSUBSRC)
	$(TEXCOMPILE)
	$(TEXCOMPILE)

clean :
	rm -rf  *.nav *.snm *.log *.bbl *.blg *.pdf *.aux *.backup *.bak *.toc *.out *~ .*~	
