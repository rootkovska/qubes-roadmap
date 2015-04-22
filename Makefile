all: roadmap.pdf roadmap.png

roadmap.pdf: roadmap.dot
	dot -Tpdf roadmap.dot -o roadmap.pdf

roadmap.png: roadmap.dot
	dot -Tpng roadmap.dot -o roadmap.png


clean:
	rm -f roadmap.pdf roadmap.png
