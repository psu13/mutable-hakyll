all: site sync

site:
	stack build
	stack exec site rebuild

watch2: site
	stack exec -- site watch

watch: site
	stack exec -- site watch --port 8000 --host 192.168.7.112

clean:
	stack exec site clean

sync: site
	sh ./sync

.PHONY: sync clean
