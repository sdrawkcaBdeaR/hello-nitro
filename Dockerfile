FROM busybox:latest
ENV PORT=8008
LABEL maintainer="c_nit.ro"

COPY index.html /nitro/index.html

# Checking if the port works fine
HEALTHCHECK CMD curl --fail http://localhost:$PORT

# Create a basic webserver and run it until the container is stopped
CMD trap "exit 0;" TERM INT; httpd -v -p $PORT -h /nitro -f & echo "httpd started"; wait
