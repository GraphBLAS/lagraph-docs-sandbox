pdf:
	pandoc table.md --from markdown+latex_macros+pipe_tables --output table.pdf --template eisvogel --listings
	pandoc bfs.md --from markdown+latex_macros --output bfs.pdf --template eisvogel --listings

html:
	pandoc table.md --mathjax --standalone --from markdown+latex_macros --output table.html
	pandoc bfs.md --mathjax --standalone --from markdown+latex_macros --output bfs.html
