# Another PHP 5.6 FPM image

This image is being used by very old project.

* Alphine Linux (Currently using 3.5)
* Minimal setup
* Small size (under 50 mb)
* Nginx with PHP 5.6 FPM
* Legacy Mongo Driver 1.6

Usage Example:
```
FROM stiks/php-nginx-legacy-mongo

COPY app/ /app

RUN composer install --prefer-dist --no-progress --profile --no-suggest --no-interaction --no-dev
```
### Optional:  you can delete git

In my images, I don't really need git after I've setup everything

```
RUN apk delete git
```

# Build

Build process require GITHUB TOKEN:

```
docker build . --build-arg GITHUB_OAUTH_TOKEN=REPLACE_WITH_YOUR_GITHUB_TOKEN
```

Available extensions:

* mongodb 1.3.2
* mongo 1.6.16 (latest available)
* memcached 2.2.0
