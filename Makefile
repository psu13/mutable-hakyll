site:
	stack build
	stack exec site rebuild

watch: site
	stack exec -- site watch --host 192.168.7.112 --port 8000


all: site
