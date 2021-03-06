#!/bin/sh
set -e

TAG=${$1:-latest}

function usage {
  echo """
    USAGE:
    ./build.sh <label>
  """
}

function build {
  echo "Builda Container"
  docker build --build-arg "BUILD_ID=${TAG}" -t docker.io/rosthansilva/${PWD##*/}:${TAG} .
}

function push {
  echo "Pushing image to docker hub"
  docker push docker.io/rosthansilva/${PWD##*/}:${TAG}
  echo $?
}

function main {
  if [ -z "${TAG}" ]; then
    usage
  else
    build
    push
  fi
}

main
