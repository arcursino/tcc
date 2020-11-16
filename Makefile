.PHONY: start

start: 
	docker build -t tcc .
	docker run -p 8888:8888 -v $(shell pwd):/notebooks tcc