#!/bin/bash
export GPGKEY=48FF70B8434078A7F830E720D91EF4A55F9D3B3C
export NODE_OPTIONS=--openssl-legacy-provider
make build-frontend
make build-backend
makepkg -cf --config makepkg.conf --sign
