TIMESTAMP := $(shell date -I)

all: roadmap-$(TIMESTAMP).pdf roadmap-$(TIMESTAMP).png

roadmap-$(TIMESTAMP).pdf: roadmap.dot
	dot -Tpdf roadmap.dot -o roadmap-$(TIMESTAMP).pdf

roadmap-$(TIMESTAMP).png: roadmap.dot
	dot -Tpng roadmap.dot -o roadmap-$(TIMESTAMP).png


clean:
	rm -f roadmap.pdf roadmap.png
