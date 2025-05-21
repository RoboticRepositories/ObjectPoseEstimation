#!/usr/bin/env sh

Xvfb :1 -screen 0 1024x768x24 -ac +extension GLX +render -noreset &
export DISPLAY=:1

mkdir -p gts/template_gts

python3 /code/ZS6D/prepare_templates_and_gt.py --config_file /code/ZS6D/zs6d_configs/template_gt_preparation_configs/cfg_template_gt_generation_ycbv.json 

