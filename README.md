# Another PHP 5.6 FPM image

This image is being used by very old project.

* Alphine Linux
* Minimal setup
* Small size
* Nginx with PHP FPM
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
