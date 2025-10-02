# Hello Nitro

A simple Docker image that gives http responses on port 8008. Just a get-to-know docker project.

```bash
$ docker images | grep hell
REPOSITORY               TAG       IMAGE ID        CREATED          VIRTUAL SIZE
cnitinrohit/hello-nitro     latest    2b28c6ad8d1b    4 months ago     1.2MB
```

Wanted to make a project with docker, but wanted it to simple and not involve other software tools. So,
ended up making this one after getting inspiration from a fellow enthusiast from github.
Got to learn a lot of things about docker and little bit about IP addressing. Would recommend people
to use docker as it can open the realm of open source DevOps technology.

## Sample Usage

### Starting a web server on port 80 (the deafault port)

```bash
$ docker run -d --rm --name web-test -p 80:8008 cnitinrohit/hello-nitro
```

You can now interact with this as if it were a dumb web server:

```
$ curl localhost
<xmp>
Hello World
...octo...
```

```
$ curl -I localhost
HTTP/1.0 200 OK
```
