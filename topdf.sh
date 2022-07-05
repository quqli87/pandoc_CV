#!/bin/bash
 #ls -d KarolKulisCVpl.md | entr -r pandoc -o KarolKulisCVpl.latex -f markdown KarolKulisCVpl.md --template resume.pandoc.tex --pdf-engine xelatex
# pandoc  -f markdown KarolKulisCVpl.yml --template resume.pandoc.tex --pdf-engine xelatex -o KarolKulisCVpl.pdf 
# pandoc  -f markdown KarolKulisCVpl.yml --template resume.pandoc.tex --pdf-engine xelatex -o KarolKulisCVpl.md
 


ls -d KarolKulisCVpl.yml | pandoc KarolKulisCVpl.yml  --template resumePL.pandoc.tex --pdf-engine=xelatex -o KarolKulisCVpl.pdf -f markdown KarolKulisCVpl.yml



