#!/usr/bin/env bash
# Example of using getopts
# It doesn't work well with long options like --myoption
# This is for options, not for subcommands or other arguments

while getopts ":aFb:" opt;do
  case $opt in
    a)
      echo "-a was triggered!" >&2
      ;;
    F)
      echo "-F was triggered!" >&2
      ;;
    b)
      echo "-b was triggered with $OPTARG" >&2
      ;;
    \?)
      echo "Invalid option: -$OPTARG" >&2
      ;;
    :)
      echo "Option -$OPTARG requires an argument." >&2
  esac
done

