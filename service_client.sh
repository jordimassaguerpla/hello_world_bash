#!/usr/bin/env bash
# very simple service client
# it does not parse the json response
# see also https://github.com/micha/resty

curl "http://api.openweathermap.org/data/2.5/weather?q=43470,sp&APPID=TOKEN"
