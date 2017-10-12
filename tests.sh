#!/bin/sh

x=0
for i in tests/*/*.jsonnet
do
    t="Compiling $i..."
    if jsonnet  -J . $i > $i.result
    then
        echo $t OK
    else
        echo $t NOK
        x=1
        continue
    fi

    t="Checking $i..."
    if diff $i.result $i.expectation
    then
        echo $t OK
    else
        echo $t NOK
        x=1
    fi
done
return $x
