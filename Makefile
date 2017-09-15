PKG="reg.whispir.cc/whispircn/templates/testch"
IMAGE?="reg.whispir.cc/whispircn/templates/testch"
all:
	go install

clean:
	@rm -fr $(GOPATH)/bin/testch bin testch

binary:
	docker run -i --rm  -v `pwd`:/go/src/$(PKG) -w /go/src/$(PKG) iron/go:1.7-dev go build -o testch

docker-build: binary
	docker build -t $(IMAGE) .

.PHONY: binary