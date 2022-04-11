# Debian10-buster-python-build

## Purpose
Use this container to generate an installable deb package for python versions,
if you don't have or want a full build chain on your target debian machine *(assuming it's a compatible cpu architecture)*.

## Instructions

Create image:

```shell
docker build -t debian-python-build .
```

Run build command:

```shell
docker run -it --name debian-python-build-1 debian-python-build build-python.sh
```

After build completed, copy resulting deb file out of container:

```shell
docker cp debian-python-build-1:/usr/local/src/Python-3.8.13/python_3.8.13-SNAPSHOT_amd64.deb .
```

## Notes

Change python version by editing ``build-python.sh``
