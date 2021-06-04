
pdf:
	pandoc --from markdown+latex_macros bfs.md --output bfs.pdf --template eisvogel --listings

html:
	pandoc --mathjax --standalone --from markdown+latex_macros bfs.md --output bfs.html
