ARG FREEBSD_RELEASE

FROM ghcr.io/appjail-makejails/x11appjail-base:${FREEBSD_RELEASE}-nox11

ARG NO_PKGCLEAN

LABEL org.opencontainers.image.title="Htop" \
    org.opencontainers.image.description="Better top(1) - interactive process viewer" \
    org.opencontainers.image.source="https://github.com/AppJail-makejails/htop" \
    org.opencontainers.image.url="https://github.com/AppJail-makejails/htop" \
    org.opencontainers.image.vendor="DtxdF" \
    org.opencontainers.image.authors="Jesús Daniel Colmenares Oviedo <dtxdf@disroot.org>"

RUN set -xe; \
    \
    pkg update; \
    pkg install htop; \
    \
    if [ -z "${NO_PKGCLEAN}" ]; then \
        pkg clean -a; \
        rm -rf /var/cache/pkg/*; \
    fi; \
    rm -rf /var/db/pkg/repos/*
