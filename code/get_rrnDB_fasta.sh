#!/usr/bin/env bash 

archive=$1

#dollar sign tells bash (programming language) that its a varaible. 
#echo "$archive"

wget -nc -P data/raw/ https://rrndb.umms.med.umich.edu/static/download/"$archive" 
unzip -n -d data/raw/  data/raw/"$archive".zip
