#!/bin/sh

FILESDIR=$1
SEARCHSTR=$2

if [ ! $# -eq 2 ]
then
    echo "Missing arguments."
    exit 1
fi

if [ ! -d "$FILESDIR" ]
then
    echo "$FILESDIR is NOT a directory."
    exit 1
fi

FILE_COUNT=$(ls $FILESDIR | wc -l)
MATCHING_COUNT=$(grep -r "$SEARCHSTR" $FILESDIR | wc -l)

echo "The number of files are $FILE_COUNT and the number of matching lines are $MATCHING_COUNT"

