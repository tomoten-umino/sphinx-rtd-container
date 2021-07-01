FROM python:3.7-alpine3.13

RUN apk add --update --no-cache \
        make \
        git \
        build-base \
        zlib-dev \
        libjpeg-turbo-dev \
        freetype \
        freetype-dev; \
        pip install sphinx sphinx_rtd_theme myst-parser; \
        apk del build-base

CMD ["/bin/sh"]
