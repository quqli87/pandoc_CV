all: pdfpl htmlpl txtpl mdpl

pdfpl: KarolKulisCVpl.pdf
KarolKulisCVpl.pdf: KarolKulisCVpl.yml  resume.pandoc.tex  ; ls -d KarolKulisCVpl.yml | pandoc KarolKulisCVpl.yml  --template resumePL.pandoc.tex --pdf-engine=xelatex -o KarolKulisCVpl.pdf -f markdown KarolKulisCVpl.yml

pdfen: KarolKulisCVen.pdf
KarolKulisCVen.pdf: KarolKulisCVen.yml resume.pandoc.tex ; pandoc --template resumeEN.pandoc.tex --pdf-engine=xelatex -o KarolKulisCVen.pdf -f markdown KarolKulisCVen.yml

htmlpl: resume.html
resume.html: KarolKulisCVpl.yml resume.pandoc.html ; pandoc --template resume.pandoc.html --self-contained --css resume.css -o resume.html -f markdown  KarolKulisCVpl.yml

txtpl: KarolKulisCVpl.txt
KarolKulisCVpl.txt: KarolKulisCVpl.yml resume.pandoc.plain ; pandoc -t plain --template resume.pandoc.plain -o KarolKulisCVpl.txt -f markdown KarolKulisCVpl.yml

mdpl: KarolKulisCVpl.md
KarolKulisCVpl.md: KarolKulisCVpl.yml resume.pandoc.markdown ; pandoc -t markdown  --template resume.pandoc.markdown -o KarolKulisCVpl.md  -f markdown KarolKulisCVpl.yml

clean: ; rm -f KarolKulisCVpl.pdf  KarolKulisCVpl.txt KarolKulisCVpl.md KarolKulisCVpl.en  KarolKulisCVen.txt KarolKulisCVen.md 
