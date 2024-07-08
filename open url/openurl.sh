#!/bin/bash


if [ -z "$1" ]; then
  echo "No url provided"
  exit 1
else
  echo "opening $1 in firefox";
  firefox --new-tab $1 >/dev/null 2>&1 &
f