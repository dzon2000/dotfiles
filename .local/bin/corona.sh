#!/bin/bash

cases=$(curl -s https://corona.lmao.ninja/v2/countries/Poland | jq .todayCases)

echo -e -n $cases
