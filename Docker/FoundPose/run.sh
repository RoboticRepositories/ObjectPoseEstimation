#!/usr/bin/env sh

docker run --rm --network host --gpus all \
  -v ./Workspace/FoundPose:/Workspace \
  -v ./foundpose:/code/foundpose \
  -v $HOME/.cache/torch:/root/.cache/torch \
  robinlab/op_foundpose jupyter notebook --no-browser --allow-root \
  --IdentityProvider.token=''

