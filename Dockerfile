FROM r-base:4.6.1

RUN \
  apt-get update && \
  apt-get install -y --no-install-recommends \
    libxml2-dev && \
  rm -rf /var/lib/apt/lists/*

RUN R -e "install.packages(c('lintr', 'styler'))"

COPY . /data/
WORKDIR /data
