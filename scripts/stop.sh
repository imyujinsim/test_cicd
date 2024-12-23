#!/bin/bash

node_pid=$(ps -a | grep "node" | awk '{print $1}')

if [ -z "$node_pid" ]; then
    exit 0
else
    kill $node_pid

    if [ $? -eq 0 ]; then
        exit 0
    else
        exit 1
    fi
fi
