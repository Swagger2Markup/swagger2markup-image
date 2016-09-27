#!/bin/bash

docker run --rm -v "$PWD":/opt swagger2markup/swagger2markup "$@"