all: roadmap.pdf

roadmap.pdf: roadmap.dot
	dot -Tpdf roadmap.dot -o roadmap.pdf

clean:
	rm -f roadmap.pdf roadmap.png
