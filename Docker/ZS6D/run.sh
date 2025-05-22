#!/usr/bin/env sh

#docker run --rm --network host --gpus all \
#  -v ./Datasets:/Datasets \
#  -v ./Workspace/ZS6D:/Workspace \
#  -v ./ZS6D:/code/ZS6D \
#  -v $HOME/.cache/torch:/root/.cache/torch \
#  robinlab/op_zs6d jupyter notebook --no-browser --allow-root \
#  --IdentityProvider.token=''

rocker --x11 --nvidia --user --network host \
  --volume ./Datasets:/Datasets ./Workspace/ZS6D:/Workspace \
           ./ZS6D:/code/ZS6D $HOME/.cache -- \
  robinlab/op_zs6d jupyter notebook --no-browser --IdentityProvider.token='' --notebook-dir=/Workspace

