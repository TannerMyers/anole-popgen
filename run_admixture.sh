#!/usr/bin/env bash

#conda init bash
#conda activate structure

# Name variables
INPUT_FILE=$1

# Run Admixture on a number of "K" value.
for K in 1 2 3 4 5 6 7 8 9 10; 
	do
	    admixture --cv $INPUT_FILE $K | tee log${K}.out

	done