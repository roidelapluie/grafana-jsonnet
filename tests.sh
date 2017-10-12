#!/bin/sh

for i in tests/*/*.jsonnet
do
    jsonnet $i > $i.result
    diff $i.result $i.expectation
done
