#! /usr/bin/env bash

touch curl.csv
echo -n > curl.csv
echo "time_total,size_download" >> curl.csv

for i in {1..100}; do
  identifier="identifier${i}"
  curl -s "localhost:3002/avatars/${identifier}" -o /dev/null -w '%{time_total},%{size_download}\n' >> curl.csv
done
