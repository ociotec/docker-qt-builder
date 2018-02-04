## Docker Qt builder

This is a Ubuntu based docker container with development tools ready to be used to build C++ software.



### Installed frameworks & tools:

* Qt 5.9.3
* cmake 3.5.1

### Dockerfile

You can find Dockerfile & rest of support files under Github project:

> https://github.com/ociotec/docker-qt-builder

### Docker hub

You can find more info at Docker hub:

> https://hub.docker.com/r/ociotec/docker-qt-builder

### Usage example

Supossing you're in a directory with a cmake project, just run this:

````bash
docker run --rm --volume ${PWD}:/tmp ociotec/docker-qt-builder \
       bash -c ". /opt/qt59/bin/qt59-env.sh && \
                mkdir -p build && \
                cd build && \
                cmake .. && \
                make -j"
````

Don't forget to run `. /opt/qt59/bin/qt59-env.sh` at the beginning to enable Qt environment.

