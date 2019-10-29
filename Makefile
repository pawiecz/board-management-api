base = ideas
slides = $(base).pdf

all: $(slides)

%.pdf: %.org
	emacs $< -batch --eval '(org-beamer-export-to-pdf)'

clean:
	find . -type f -name "*$(base)*" -a ! \( -name "*\.org" \) -delete

.PHONY: all clean
