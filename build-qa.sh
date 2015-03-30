pdflatex -interaction=nonstopmode oq-risk-qa.tex
makeindex oq-risk-qa.idx -s configuration/StyleInd.ist
bibtex oq-risk-qa
makeglossaries oq-risk-qa
pdflatex -interaction=nonstopmode oq-risk-qa.tex
pdflatex -interaction=nonstopmode oq-risk-qa.tex
./clean.sh
open oq-risk-qa.pdf