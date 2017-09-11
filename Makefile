PRES = presentation.pdf
SRC = introduction.md zen-of-python.md les-regles-de-style.md les-autres-principes.md les-mecanismes-du-langage.md la-bibliotheque-standard.md les-bons-reflexes.md conclusion.md

all: $(PRES) exemples.pdf


GEN = $(PRES) exemples.pdf

$(PRES): $(SRC)
	pandoc -t beamer --slide-level=2 -V lang=fr -V theme:zestedesavoir -o $@ $(SRC)

notheme: $(SRC)
	pandoc -t beamer --slide-level=2 -V lang=fr -o $(PRES) $(SRC)

exemples.pdf: exemples.md
	pandoc -t beamer --slide-level=2 -V lang=fr -V theme:zestedesavoir -o $@ $^

clean:
	rm -f $(GEN)

re:	clean $(GEN)


.PHONY: all clean notheme
