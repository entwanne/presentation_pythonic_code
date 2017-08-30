PRES = presentation.pdf
SRC = introduction.md zen-of-python.md les-regles-de-style.md les-autres-principes.md les-mecanismes-du-langage.md la-bibliotheque-standard.md les-bons-reflexes.md conclusion.md

$(PRES):


GEN = $(PRES)

$(PRES): $(SRC)
	pandoc -t beamer --slide-level=2 -V lang=fr -V theme:zestedesavoir -o $@ $(SRC)

notheme: $(SRC) $(PICTURES)
	pandoc -t beamer --slide-level=2 -V lang=fr -o $(PRES) $(SRC)

clean:
	rm -f $(GEN)

re:	clean $(GEN)


.PHONY: all clean notheme
