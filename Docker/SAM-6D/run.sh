#!/usr/bin/env sh

docker run --rm --network host --gpus all \
  -v ./Notebooks/SAM-6D:/Notebooks \
  -v ./SAM-6D/SAM-6D:/code/SAM-6D \
  -v $HOME/.cache/torch:/root/.cache/torch \
  op_sam-6d sh -c ". /root/.bashrc && conda activate sam6d && jupyter notebook --no-browser --allow-root --IdentityProvider.token=''"

