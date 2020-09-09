.PHONY: build buildlinux

install:
	GO111MODULE=on GOARCH=amd64 GOOS=darwin go build -ldflags="-w -s" -o bin/test-args ./main.go