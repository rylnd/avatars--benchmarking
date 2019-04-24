#! /usr/bin/env bash
psrecord $(pgrep node | head -n1) --interval 1 --log psrecord.txt --plot plot.png  --include-children
