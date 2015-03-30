pdflatex -interaction=nonstopmode oq-risk-book.tex
makeindex oq-risk-book.idx -s configuration/StyleInd.ist
bibtex oq-risk-book
makeglossaries oq-risk-book
pdflatex -interaction=nonstopmode oq-risk-book.tex
pdflatex -interaction=nonstopmode oq-risk-book.tex
./clean.sh
open oq-risk-book.pdf