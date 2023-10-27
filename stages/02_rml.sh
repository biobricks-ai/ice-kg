#!/usr/bin/env bash

set -e

# Script to create N-Triples graph using RML

# Get local path
localpath=$(pwd)
echo "Local path: $localpath"

eval $( $localpath/vendor/biobricks-script-lib/activate.sh )

# Create raw directory
rawpath="$localpath/raw"
mkdir -p $rawpath
echo "Raw path: $rawpath"

# Process RML mapping
python3 -m morph_kgc stages/ice.ini

# Sort in-place for reproducible hash
sort-file-inplace $rawpath/knowledge-graph.nt
