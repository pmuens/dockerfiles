# Go

Development environment for go.

## Usage

1. Run `docker-compose run go bash`

## Changing the projects path

You might want to modify the [Docker compose file](./docker-compose.yml) and edit the path to the project (it currently points to `go`) so that GOPATH resolves it correctly.

## TDD

If you're on the TDD train you can use the `test.sh` script to automatically format the go code, run the tests and create a test coverage report.

The test coverage lives in the `.coverage` directory and includes a `coverage.html` file to easily see what code needs coverage while TDDing along.
