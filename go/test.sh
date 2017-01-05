#!/usr/bin/env bash

DIR=./.coverage
mkdir -p $DIR

go fmt ./...
go test ./... -coverprofile=$DIR/coverage.out
go tool cover -html=$DIR/coverage.out -o $DIR/coverage.html
