#!/usr/bin/env bash
# Rebuild binary release assets from base64 parts: run from repo root of upstream-archive branch
set -e
for first in $(find . -name '*.b64.part00'); do out="${first%.b64.part00}"; cat "$out".b64.part* | base64 -d > "$out"; echo "restored $out"; done
