#!/bin/bash

echo "Running cmd: export TESTENV=$1; export BROWSERNAME=$2; behave -n \"$3\" -k"
export TESTENV=$1; export BROWSERNAME=$2; behave -n "$3" -k
