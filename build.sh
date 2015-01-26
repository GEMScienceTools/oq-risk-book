pdflatex oqbr.tex
makeindex oqbr.idx -s configuration/StyleInd.ist
bibtex oqbr
makeglossaries oqbr
pdflatex oqbr
pdflatex oqbr
./clean.sh
