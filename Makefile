site:
	stack build
	stack exec site rebuild

watch: site
	stack exec -- site watch


all: site
