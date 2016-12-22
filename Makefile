all: 
	platex main.tex
	makeindex main.idx
	platex main.tex

s : dvi

dvi :
	xdvi main.dvi

ps: dvi
	dvips main.dvi
	ps2pdf main.ps



clean:
	rm -f *~ .*~ *.ps *.dvi *.aux *.toc *.idx *.ind *.ilg *.log *.out
