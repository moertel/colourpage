FROM fabiocicerchia/nginx-lua:1.19-alpine
LABEL maintainer="hi@moer.tel"

ARG BUILD_DATE

LABEL org.label-schema.build-date=$BUILD_DATE
LABEL org.label-schema.schema-version="1.0"
LABEL org.label-schema.name="moertel/colour"
LABEL org.label-schema.description="Displays a static HTML page in a single colour."

COPY index.html /tmp/index.html
COPY 00-apply-color.sh /docker-entrypoint.d/
COPY 01-apply-metrics.sh /docker-entrypoint.d/
COPY metrics.sh /tmp/metrics.sh
COPY metrics.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /usr/share/nginx/html

ENV COLOUR blue
