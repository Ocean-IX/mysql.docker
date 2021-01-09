FROM mysql:5.7

MAINTAINER OceanIX Administrator <connect@oceanix.net.au>

RUN apt-get update \
  && apt-get install -y wget \
  && rm -rf /var/lib/apt/lists/*

RUN sed -i -r 's/bind-address.*$/bind-address = 0.0.0.0/' /etc/mysql/my.cnf \
  && sed -i -r 's/port.*$/port = 3306'/ /etc/mysql/my.cnf
