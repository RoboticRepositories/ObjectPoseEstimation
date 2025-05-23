#!/usr/bin/env sh

# set the paths
export CAD_PATH=$PWD/Data/Example_tless/obj_000005.ply    # path to a given cad model(mm)
export RGB_PATH=$PWD/Data/Example_tless/rgb.png           # path to a given RGB image
export DEPTH_PATH=$PWD/Data/Example_tless/depth.png       # path to a given depth map(mm)
export CAMERA_PATH=$PWD/Data/Example_tless/camera.json    # path to given camera intrinsics
export OUTPUT_DIR=$PWD/Data/Example_tless/outputs         # path to a pre-defined file for saving results


# Run instance segmentation model
export SEGMENTOR_MODEL=sam
#export SEGMENTOR_MODEL=fastsam

cd /code/SAM-6D/Instance_Segmentation_Model
python run_inference_custom.py --segmentor_model $SEGMENTOR_MODEL --output_dir $OUTPUT_DIR --cad_path $CAD_PATH --rgb_path $RGB_PATH --depth_path $DEPTH_PATH --cam_path $CAMERA_PATH


# Run pose estimation model
export SEG_PATH=$OUTPUT_DIR/sam6d_results/detection_ism.json

cd /code/SAM-6D/Pose_Estimation_Model
python run_inference_custom.py --output_dir $OUTPUT_DIR --cad_path $CAD_PATH --rgb_path $RGB_PATH --depth_path $DEPTH_PATH --cam_path $CAMERA_PATH --seg_path $SEG_PATH

