#!/bin/bash
export NODE_OPTIONS=--openssl-legacy-provider
make build-frontend
make build-backend
makepkg -cf --config makepkg.conf
