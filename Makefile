all: site sync

site:
	stack build
	stack exec site rebuild

watch: site
	stack exec -- site watch

watch2: site
	stack exec -- site watch --port 8000 --host 192.168.7.112


sync:
	sh ./sync

.PHONY: sync
