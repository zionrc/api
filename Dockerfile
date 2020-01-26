FROM bash:4.4.23

RUN apk add --no-cache curl
RUN curl -sL https://git.io/zion?t | bash -
