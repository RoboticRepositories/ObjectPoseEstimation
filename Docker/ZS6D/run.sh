#!/usr/bin/env sh

docker run --rm --network host --gpus all \
  -v ./Workspace/ZS6D:/Workspace \
  -v ./ZS6D:/code/ZS6D \
  -v $HOME/.cache/torch:/root/.cache/torch \
  op_zs6d jupyter notebook --no-browser --allow-root \
  --IdentityProvider.token=''

