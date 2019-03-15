FROM alpine:3.6

ENV PATH /app/venv/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8


# Install packages and perform cleanup
RUN apk update \
  && apk upgrade \
  && apk add \
   py3-pip \
   py-pip \
   py3-openssl \
   openssl \
   openssl-dev \
   python3-dev \
   python-dev \
   py-asn1 \
   py-psycopg2 \
   libffi-dev \
   libssl1.0 \
   gcc \
   musl-dev \
   ca-certificates \
   make \
   postgresql-client

RUN pip3 install -U \
    pip \
    setuptools
