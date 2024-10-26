FROM chabad360/hugo

RUN apk add --update --no-cache openssl git \
  gcompat \
  libc6-compat \
  && rm -rf /var/cache/apk/*
  && ln -s /lib/libc.so.6 /usr/lib/libresolv.so.2

COPY ./docker-entrypoint.sh /entrypoint.sh

ENTRYPOINT [ "/entrypoint.sh" ]
