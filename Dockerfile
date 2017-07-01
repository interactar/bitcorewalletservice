FROM quay.io/aptible/nodejs:v4.6.x
MAINTAINER Javier Ailbirt.

RUN apt-get update && apt-get install -y --no-install-recommends \
    mongodb-clients \
    git-core \
    libkrb5-dev \
  && rm -rf /var/lib/apt/lists/*

RUN git clone https://github.com/bitpay/bitcore-wallet-service.git /bws
WORKDIR /bws

ADD walletcfg/config.js /bws/config.js

RUN npm install

EXPOSE 3232 3231 3380 443

CMD npm start && tail -f /bws/logs/bws.log
