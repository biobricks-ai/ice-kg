#!/usr/bin/env bash

# Script to turn N-Triples into RDF HDT file

# Get local path
localpath=$(pwd)
echo "Local path: $localpath"

# Get raw path
rawpath="$localpath/raw"
echo "Raw path: $rawpath"

# Create brick directory
brickpath="$localpath/brick"
mkdir -p $brickpath
echo "Brick path: $brickpath"

base_uri='https://ice.ntp.niehs.nih.gov/'
rdf2hdt -i -p -B "$base_uri" $rawpath/knowledge-graph.nt brick/ice.hdt
