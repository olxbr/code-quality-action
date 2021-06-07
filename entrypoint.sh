#!/bin/sh -l

set -e

function make_target_exists {
    output=$(make -q "$1" 2>&1 | head -1)
    [[ "$output" == "" ]]
}

function run_target {
    echo Running $1...
    if make_target_exists $1; then
        make $1
    else
        echo "WARNING: Target [$1] not found in Makefile. This will be mandatory soon!"
    fi
}

run_target lint

run_target test

run_target coverage
