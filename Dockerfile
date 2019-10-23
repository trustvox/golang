FROM golang
MAINTAINER Gabriel Custódio <gabriel.martins@reclameaqui.com.br>

# Install clang and define as default compiler.
# Required in order to use memory sanitizer
RUN apt-get update && apt-get install -y --no-install-recommends \
    clang \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

ENV CC=/usr/bin/clang \
    CXX=/usr/bin/clang++

# Go tools
RUN go get -u golang.org/x/lint/golint
