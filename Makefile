pdf:
	pandoc bfs.md --from markdown+latex_macros --output bfs.pdf --template eisvogel --listings
	pandoc table.md --from markdown+latex_macros --output table.pdf --template eisvogel --listings

html:
	pandoc bfs.md --mathjax --standalone --from markdown+latex_macros --output bfs.html
	pandoc table.md --mathjax --standalone --from markdown+latex_macros --output table.html
