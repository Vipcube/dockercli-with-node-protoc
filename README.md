# Docker Image CLI with Node, Protobuf

The hardest container image to find on public repositories is the one I want, but it always seems to be missing a part.
Therefore, I decided to build it myself. :sunglasses:

This image base on `alpine`, and packs the [node](https://nodejs.org/en/), [protoc](https://github.com/protocolbuffers/protobuf) together with the [buf](https://buf.build/).

## Why we need it

Mostly it is used during CI/CD (continuous integration and continuous delivery) or as part of an automated build/deployment with with Amazon ECR and EKS.

## NOTES

The latest docker tag is the latest release version

Please avoid to use `latest` tag for any production deployment.

## Additional Infos

### GitHub Repo

[https://github.com/Vipcube/dockercli-with-node-protoc](https://github.com/Vipcube/dockercli-with-node-protoc)

### Docker Image Tags

[https://hub.docker.com/r/vipcube/dockercli-with-node-protoc/tags](https://hub.docker.com/r/vipcube/dockercli-with-node-protoc/tags)

## Usage

```shell
# run container as npm command
docker run -it vipcube/dockercli-with-node-protoc npm

# run container as protoc command
docker run -it vipcube/dockercli-with-node-protoc protoc

# run container as buf command
docker run -it vipcube/dockercli-with-node-protoc buf
```

## Authors

maintain by: [@Vipcube](https://github.com/Vipcube)
