#!/bin/bash

docker run \
    --publish=7474:7474 --publish=7687:7687 \
    --volume=$HOME/neo4j/data:/data \
    --volume=$HOME/neo4j/import:/var/lib/neo4j/import \
    tech-neo4j &