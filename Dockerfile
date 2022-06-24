FROM kong:2.8.1

ENV AUTH_PLUGIN_VERSION=0.1.0-0

USER root

COPY . /kong

WORKDIR /kong

RUN luarocks make \
    && luarocks pack jina-auth ${AUTH_PLUGIN_VERSION} \
     && luarocks install jina-auth-${AUTH_PLUGIN_VERSION}.all.rock


USER kong
