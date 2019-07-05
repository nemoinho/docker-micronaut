# Docker Micronaut

This project aims to provide a dockerized version of micronaut cli.

_The target community are basically linux users_

## Usage

    docker run --rm -it -v $PWD:/app nemoinho/mn create-app hello-world

### Alias
Create an alias to invoke the command through docker like it is installed locally:

    alias mn='docker run --rm -it -v $PWD:/app nemoinho/mn'

    mn create-app hello-world

