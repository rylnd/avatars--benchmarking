#! /usr/bin/env bash

for i in {1..1000}; do
  identifier="identifier${i}"
  echo ${identifier}
  curl -s "localhost:3002/avatars/${identifier}" > /dev/null
done
