#!/bin/bash

PYTHON=`which python`
PYTHON_DIR=`dirname $PYTHON`
PYTHON_LIB_DIR=`dirname $PYTHON_DIR`
echo PYTHON=$PYTHON
echo PYTHON_DIR=$PYTHON_DIR
echo PYTHON_LIB_DIR=$PYTHON_LIB_DIR

rm -Rf dist build typelib.egg-info
rm -Rf ./samples/gen
rm -Rf `find ./ | grep "\.pyc$"`
python setup.py install -f 
rm -Rf build dist typelib.egg-info
