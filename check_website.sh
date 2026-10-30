#!/bin/bash

website=${1:-google.com}

if ping -c 1 $website > /dev/null ; then
echo "Success: $website is reachable"

else 

echo "Failure: $website is not reachable"
fi
