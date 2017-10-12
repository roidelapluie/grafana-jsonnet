#!/bin/sh

x=0
for i in tests/*/*.jsonnet
do
    t="Checking $i..."
    echo $t
    jsonnet $i > $i.result
    if diff $i.result $i.expectation
    then
        echo $t OK
    else
        echo $t NOK
        x=1
    fi
done
return $x
