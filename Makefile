all: site sync

site:
	stack build
	stack exec site rebuild

watch: site
	stack exec -- site watch


sync:
	sh ./sync

.PHONY: sync
