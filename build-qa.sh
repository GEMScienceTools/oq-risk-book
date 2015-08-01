pdflatex -interaction=nonstopmode oq-risk-qa.tex > qa-tex.log
makeindex oq-risk-qa.idx -s configuration/StyleInd.ist
bibtex oq-risk-qa > qa-bib.log
makeglossaries oq-risk-qa > qa-glos.log
pdflatex -interaction=nonstopmode oq-risk-qa.tex > qa-tex.log
pdflatex -interaction=nonstopmode oq-risk-qa.tex > qa-tex.log
cat qa-tex.log | grep "Error"
cat qa-tex.log | grep "Warning"
cat qa-bib.log | grep "found"
cat qa-glos.log | grep "Warning"
./clean.sh
open oq-risk-qa.pdf