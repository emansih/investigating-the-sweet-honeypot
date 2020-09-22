#!/bin/bash


# Get the history of ip addresses attempting to connect to the server
grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" endlessh-logs.txt | sed -e 's/^[[:space:]]*//' | sort | uniq >> ip-address.txt