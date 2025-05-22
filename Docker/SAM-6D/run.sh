#!/usr/bin/env sh

#docker run --rm --network host --gpus all \
#  -v ./Workspace/SAM-6D:/Workspace \
#  -v ./SAM-6D/SAM-6D:/code/SAM-6D \
#  -v $HOME/.cache/torch:/root/.cache/torch \
#  robinlab/op_sam-6d sh -c ". /root/.bashrc && conda activate sam6d && jupyter notebook --no-browser --allow-root --IdentityProvider.token=''"

rocker --x11 --nvidia --user --network host \
  --volume ./Datasets:/Datasets ./Workspace/SAM-6D:/Workspace \
           ./SAM-6D/SAM-6D:/code/SAM-6D $HOME/.cache  -- \
  robinlab/op_sam-6d

