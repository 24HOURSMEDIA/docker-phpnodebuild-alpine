# docker-phpbuild-machine

A docker image that takes an alpine php image as base image,
and installs node/yarn/npm on top of it.

So you can build a complete php application.

You can configure the build with ARG's.

## Examples

### docker-compose example

```
version: '3.7'

services:

  phpbuild_machine:
    build:
      context: https://github.com/24HOURSMEDIA/docker-phpnodebuild-alpine.git
      args:
        # use a custom node version, look up the checksum at
        # for example https://github.com/nodejs/docker-node/blob/8b8eebe2667b04d50f85535e2504fcbfd4675930/13/alpine3.10/Dockerfile
        NODE_VERSION: 13.6.0
        NODE_CHECKSUM: 6dec2b26f072ce2dd2cf5c72e4cccf76095afa71d4ac4803752f3a5bab8c01df
```

## Different node versions

Use these build arguments:

### Node 12.14.1

      args:
        PHP_IMAGE: 24hoursmedia/pfpm74trift:1.0.4
        NODE_VERSION: 12.14.1
        NODE_CHECKSUM: 6906577d7b15cc940f47fc88436ac45f73e5abecd15f09d8f2a9ea337fc2fe5e

### Node 13.6.0

      args:
        NODE_VERSION: 13.6.0
        NODE_CHECKSUM: 6dec2b26f072ce2dd2cf5c72e4cccf76095afa71d4ac4803752f3a5bab8c01df
