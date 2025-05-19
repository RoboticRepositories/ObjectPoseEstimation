#!/usr/bin/env bash

cd $(dirname "$0")

export DATASET_NAME=lmo

export SRC=https://huggingface.co/datasets/bop-benchmark/${DATASET_NAME}/resolve/main
wget $SRC/${DATASET_NAME}_base.zip
wget $SRC/${DATASET_NAME}_models.zip
wget $SRC/${DATASET_NAME}_test_all.zip

unzip ${DATASET_NAME}_base.zip
unzip ${DATASET_NAME}_models.zip
unzip ${DATASET_NAME}_test_all.zip

mv lmo/* .

rm -fr lmo *.zip

