# Get the unique ip addresses and the number of times they appear in endlessh-logs.txt 
# and order from the least to the most amount of times they appear.

#!/bin/bash

grep -o "[0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+" endlessh-logs.txt | sort | uniq -c | sed -e 's/^[[:space:]]*//' | sort -n >> ip-address-counter.txt
