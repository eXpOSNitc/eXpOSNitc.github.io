all:Mythesis.ps Mythesis.pdf
	ggv ./Mythesis.ps &
	ggv ./Mythesis.pdf &
Mythesis.pdf:
	pdflatex ./Mythesis.tex
Mythesis.ps:Mythesis.dvi
	dvips -o ./Mythesis.ps ./Mythesis.dvi
Mythesis.dvi:Mythesis.tex thesis.cls rotating.sty eufrak.sty ch1.tex ch2.tex  Mythesis.bbl 
	latex ./Mythesis.tex
	rm ./Mythesis.dvi
	latex ./Mythesis.tex
clean:
	rm Mythesis.ps
	rm Mythesis.pdf
	rm Mythesis.aux
	rm Mythesis.dvi
	rm Mythesis.log
	rm Mythesis.lof
	rm Mythesis.lot
	rm Mythesis.toc
