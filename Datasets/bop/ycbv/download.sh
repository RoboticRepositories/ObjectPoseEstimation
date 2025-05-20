#!/usr/bin/env bash

cd $(dirname "$0")

export DATASET_NAME=ycbv

export SRC=https://huggingface.co/datasets/bop-benchmark/${DATASET_NAME}/resolve/main
wget $SRC/${DATASET_NAME}_base.zip
wget $SRC/${DATASET_NAME}_models.zip
wget $SRC/${DATASET_NAME}_test_bop19.zip

unzip ${DATASET_NAME}_base.zip
unzip ${DATASET_NAME}_models.zip
unzip ${DATASET_NAME}_test_bop19.zip

mv ycbv/* .

rm -fr ycbv *.zip

