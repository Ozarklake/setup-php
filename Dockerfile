FROM php:7.3-cli

ARG PHALCON_VERSION=3.4.x

RUN set -xe && \
        cd / && \
        apt update && \
        apt install -y git && \
        # Download Phalcon
        git clone --depth=1 -b ${PHALCON_VERSION} https://github.com/phalcon/cphalcon.git && \
        cd cphalcon/build && \
        bash install.sh && \

        docker-php-ext-enable phalcon 
