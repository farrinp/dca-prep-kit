.PHONY: run build

default: run

run:
	docker run -itp 3000:3000 --name=docsify -v $(pwd):/docs piotrzan/dcaguide

build:
	docker build -f Dockerfile -t piotrzan/dcaguide .
