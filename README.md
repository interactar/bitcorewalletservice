# docker-bitcore-wallet-service
## A direct from source build of bitcore-wallet-service

### DESCRIPTION
The purpose of this container is to be a base for [BWS](https://github.com/bitpay/bitcore-wallet-service)
server configurations.

### USAGE
The default port is the same as default `3232`. You do need to run a mongo
database linked as `db` for the container to function.

As such, you can have the `bws` run by doing the following commands below:

```
docker run -p 27017:27017 --name db mongo
docker run -p 3232:3232 --link db:db abaez/bitcore-wallet-service
```
You can also simply run the docker-compose file given directly with the source
of this container.

```
git clone https://bitbucket.org/a_baez/docker-bitcore-wallet-service.git
cd <into docker-bitcore-wallet-service source>
docker-compose up
```

### LICENSE
The MIT License (MIT)

Copyright (c) 2015 [Alejandro Baez](https://twitter.com/a_baez)

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.
