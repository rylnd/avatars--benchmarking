#! /usr/bin/env bash
psrecord $(pgrep node | head -n1) --log monitor.txt --plot plot.png --include-children
