#!/bin/bash

dpxdt "$@"

if [ "$1" = "test" ]; then
  python /beautify-dpxdt/beautify-dpxdt-results.py /tmp
fi
