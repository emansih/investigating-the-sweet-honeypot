#!/bin/bash

# Track the duration of connection by hosts.
grep 'CLOSE' endlessh-logs.txt | awk '{print $11}' | sed 's/time=//' >> duration_of_connections.txt