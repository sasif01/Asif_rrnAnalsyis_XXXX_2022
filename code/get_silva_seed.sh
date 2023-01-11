#!/usr/bin/env bash 

wget -P data/referances -nc https://mothur.s3.us-east-2.amazonaws.com/wiki/silva.seed_v138_1.tgz
mkdir data/referances/silva_seed
tar -xzvf data/referances/silva.seed_v138_1.tgz -C data/referances/silva_seed/

