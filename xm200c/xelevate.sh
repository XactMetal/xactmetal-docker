#!/bin/bash
nsenter -t 1 -m -u -n -p -i "$@"

