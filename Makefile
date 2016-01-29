GOPATH := $(shell pwd)
.PHONY: clean test

all:
	@GOPATH=$(GOPATH) go install -ldflags "-s -w" qtunnel

clean:
	@rm -fr bin pkg

test:
	@GOPATH=$(GOPATH) go test tunnel
