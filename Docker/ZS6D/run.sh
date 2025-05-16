#!/usr/bin/env sh

docker run --rm --network host --gpus all \
  -v ./Notebooks/ZS6D:/Notebooks \
  -v ./ZS6D:/code/ZS6D \
  -v $HOME/.cache/torch:/root/.cache/torch \
  op_zs6d jupyter notebook --no-browser --allow-root \
  --NotebookApp.token='' &

sleep 1 && xdg-open http://localhost:8888/tree

