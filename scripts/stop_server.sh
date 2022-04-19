#!/bin/bash
isExistApp=`pgrep nginx`
if [[ -n  $isExistApp ]]; then
    service nginx stop
fi

isExistApp2=`netstat -plnt | grep 8080 | grep -v "grep"`
if [[ -n  $isExistApp2 ]]; then
    docker stop demo && docker rm demo
fi
