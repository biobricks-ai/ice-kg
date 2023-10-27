#!/usr/bin/env bash

set -e

# Script to pre-process data

# Get local path
localpath=$(pwd)
echo "Local path: $localpath"

# Create processed directory
processpath="$localpath/data-processed"
mkdir -p $processpath
echo "Processed path: $processpath"

mkdir -p "$processpath"/ice
duckdb -batch < stages/process.sql
