PDFFLAGS := --pdf-engine=lualatex

%.html: %.md org.css
	pandoc -c org.css -t html --standalone -o $@ $<

%-plain.pdf: %.md
	pandoc $(PDFFLAGS) -o $@ $<

%-eisvogel.pdf: %.md
	pandoc $(PDFFLAGS) --listings --template=eisvogel -o $@ $<

all: example.html example-plain.pdf example-eisvogel.pdf

clean:
	rm *.pdf *.html
