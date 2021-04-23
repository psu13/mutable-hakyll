site:
	stack build
	stack exec site rebuild

watch:
	stack exec site watch


all: site
