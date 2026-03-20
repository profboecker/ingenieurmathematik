LATEX=latexmk -pdf ${PDF}

OBJFILES=
MAINFILE=mathematik

all: $(MAINFILE).pdf

$(MAINFILE).pdf: $(MAINFILE).tex $(addsuffix .tex, $(OBJFILES))

%.pdf: %.tex
	${LATEX} $<

public: $(MAINFILE).pdf ; git commit -a; git push
