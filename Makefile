.PHONY: build buildlinux

build: buildlinux buildDarwin

buildlinux:
	GO111MODULE=on GOARCH=amd64 CGO_ENABLED=0 GOOS=linux go build -ldflags="-w -s" -o bin/linux/test-args ./main.go

buildDarwin:
	GO111MODULE=on GOARCH=amd64 GOOS=darwin go build -ldflags="-w -s" -o bin/mac/test-args ./main.go