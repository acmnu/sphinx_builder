# Sphinx-autobuild image

That is images which is usefull to develop documentation online.

## Usage

Run docker container against your documentation:

```
docker run -it --rm -v $(pwd)/spec:/spec -p 9000:9000 test
```

Open browser on http://127.0.0.1:9000. Edit your rst files, whatch for changes online.

To stop container just hit ctrl-c

## Speedup

If you whant to speed docs building you could use your own dir for temporary html generation instead of container one.

Do the following:

```
docker run -it --rm -v $(pwd)/spec:/spec -v /tmp/html:/html -p 9000:9000 test
```

You could also use tmpfs for that.

## Build Site

```
docker run -it --rm -v $(pwd)/spec:/spec -v /tmp/html:/html -p 9000:9000 /build.sh
```

The result will be in /tmp/html

