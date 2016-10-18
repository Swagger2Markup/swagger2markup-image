# Docker image of Swagger2Markup

Swagger2Markup is a Swagger to AsciiDoc or Markdown converter. The primary goal of Swagger2Markup is to simplify the generation of an up-to-date RESTful API documentation by combining documentation that’s been hand-written with auto-generated API documentation produced by Swagger. The result is intended to be an up-to-date, easy-to-read, on- and offline user guide, comparable to GitHub’s API documentation. The output of Swagger2Markup can be used as an alternative to swagger-ui and can be served as static content.

Swagger2Markup converts a Swagger JSON or YAML file into several AsciiDoc or GitHub Flavored Markdown documents which can be combined with hand-written documentation. The Swagger source file can be located locally or remotely via HTTP. Swagger2Markup supports the Swagger 1.2 and 2.0 specification. Internally it uses the official swagger-parser and my markup-document-builder.

The Swagger2Markup-CLI has been published as a Docker image on DockerHub.

## Reference Documentation

http://swagger2markup.github.io/swagger2markup/1.1.0/

## Usage Guide
You can pull the Swagger2Markup image as follows:

`docker pull swagger2markup/swagger2markup`

You can convert a Swagger Spec by running a Docker container as follows:

`docker run --rm -v $(pwd):/opt swagger2markup/swagger2markup convert -i /opt/swagger.yaml -f /opt/swagger -c /opt/config.properties`

You can also run swagger2markup by shell using `bin/swagger2markup.sh` as follows:

`./bin/swagger2markup convert -i /opt/swagger.yaml -f /opt/swagger -c /opt/config.properties`