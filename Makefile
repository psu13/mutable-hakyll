all: site

site:
	stack build
	stack exec site rebuild

lwatch: site
	stack exec -- site watch

watch: site
	stack exec -- site watch --port 8000 --host 192.168.7.183

clean:
	stack exec site clean

sync: site
	sh ./sync

.PHONY: sync clean
