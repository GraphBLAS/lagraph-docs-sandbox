pdf:
	pandoc table.md --from markdown+latex_macros+pipe_tables+inline_code_attributes --output table.pdf --template eisvogel --listings
	pandoc bfs.md --from markdown+latex_macros+inline_code_attributes --output bfs.pdf --template eisvogel --listings

html:
	pandoc table.md --mathjax --standalone --from markdown+latex_macros+pipe_tables+inline_code_attributes --output table.html
	pandoc bfs.md --mathjax --standalone --from markdown+latex_macros+inline_code_attributes --output bfs.html
