Create image

```
docker build -t debian-python-build .
```

Run build command

```
docker run -it --name debian-python-build-1 debian-python-build build-python.sh
```

After build completed, copy resulting deb file out of container:

```
docker cp debian-python-build-1:/usr/local/src/Python-3.8.13/python_3.8.13-SNAPSHOT_amd64.deb .
```

Change python version by editing ``build-python.sh``
