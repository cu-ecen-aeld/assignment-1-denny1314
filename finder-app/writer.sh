#!/bin/sh

if [ $# != 2 ]
then
    echo "Missing arguments."
    exit 1
fi

# a full path to a file
WRITERFILE=$1

# a text string which will be written within this file
WRITESTR=$2

DIRNAME=$(dirname $WRITERFILE)

if [ ! -d ${DIRNAME} ]
then
    mkdir ${DIRNAME}
    if [ $? == 0 ]
    then
        echo "$DIRNAME created"
    else
        echo "ERROR: Can't create ${DIRNAME}"
        exit 1
    fi
fi

# create/overwrite file
touch ${WRITERFILE}

echo "$WRITESTR" > "$WRITERFILE"

if [ $? != 0 ]
then
    echo "File write unsuccessful."
    exit 1
fi

