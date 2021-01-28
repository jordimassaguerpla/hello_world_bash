#!/usr/bin/env bash
echo -ne '##########                    (33%)\r'
sleep 1
echo -ne '####################          (66%)\r'
sleep 1
echo -ne '##############################(100%)\r'
sleep 1
echo -ne '\n\n'
# POSIX
printf "##########                      (33%%)\r"
sleep 1
printf "####################            (66%%)\r"
sleep 1
printf "################################(100%%)\r"
printf "\n\n"
