#!/bin/bash
#read shotNo
shotNo=$(<$SHOTNOFILE)
shotNo=$((shotNo+1))
filename='test_'$shotNo'.txt'
cat config.txt | nc 192.168.1.31 10001
nc -o $filename 192.168.1.31 10001
