#!/bin/bash

get_percent() {
  current=$(brightnessctl get)
  max=$(brightnessctl max)
  percent=$(echo "scale=2; ($current/$max)*100" | bc)
  result=$(echo "$percent/1" | bc)
  echo "$result%"
}

get_percent
