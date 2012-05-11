TEX_COMPILER = pdflatex
TEX_OPTIONS = --output-directory build/temp

TEX_ENTRYPOINT = src/report.tex

TEX_FILES = src/report.tex \
						src/abstract.tex \
						src/introduction.tex \
						src/cover.tex 

default: $(TEX_FILES)
	$(TEX_COMPILER) $(TEX_OPTIONS) $(TEX_ENTRYPOINT)

final: build/temp/report.dvi
	dvipdf build/temp/report.dvi
	cp build/temp/report.pdf build/report.pdf


.PHONY: clean
clean:
	rm build/temp/*.aux build/temp/*.log
