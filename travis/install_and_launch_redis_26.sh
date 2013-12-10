#!/bin/sh -ex
wget https://redis.googlecode.com/files/redis-2.6.16.tar.gz
tar xzf redis-2.6.16.tar.gz
cd redis-2.6.16
make
sed s/6379/$REDIS_PORT/ < redis.conf > redis.conf2
src/redis-server redis.conf2 &
