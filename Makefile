.PHONY : build-docker

build-docker:
	GOOS=linux GOARCH=amd64 go build -o glugut
	docker build -t glugut .
	docker tag glugut gcr.io/${gproject}/glugut
	docker push gcr.io/${gproject}/glugut
	rm glugut
