#!/usr/bin/env bash
# Example of getting command line options and parameters
# However, it does not handle "-xyz" being equivalent as "-x -y -z"
# Set exit on error
set -e
# Set print commands
set -x
# https://www.gnu.org/software/bash/manual/html_node/Special-Parameters.html
echo "cd into work dir"
cd `dirname $0`
echo "being called as $0 $@" 

if [ ! $# -gt 0 ];then
  echo "usage: $0 params"
fi

options() {
   while [ $# -gt 0 ];do
     case "$1" in
       start)
         echo "start command"
         START=true
         ;;
       -l)
         if [ $# -gt 1 ];then
           echo "l $2"
         fi
         shift
         ;;
       -h|--help)
         echo "help"
         ;;
       -l=*|--lala=*)
         echo "l equals ${1#*=}"
         ;;
       -*)
         echo "option $1"
         ;;
       *)
         echo "unkown $1"
         ;;
     esac

     shift
   done
}

options $@
