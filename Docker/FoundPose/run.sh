#!/usr/bin/env sh

#docker run --rm --network host --gpus all \
#  -v ./Datasets:/Datasets \
#  -v ./Workspace/FoundPose:/Workspace \
#  -v ./foundpose:/code/foundpose \
#  -v $HOME/.cache/torch:/root/.cache/torch \
#  robinlab/op_foundpose jupyter notebook --no-browser --allow-root \
#  --IdentityProvider.token=''

rocker --x11 --nvidia --network host \
  --volume ./Datasets:/Datasets ./Workspace/FoundPose:/Workspace \
           ./foundpose:/code/foundpose $HOME/.cache/torch:/root/.cache/torch -- \
  robinlab/op_foundpose jupyter notebook --no-browser --allow-root --IdentityProvider.token=''

