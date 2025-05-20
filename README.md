# ObjectPoseEstimation

Clone the repository:
```
git clone https://github.com/RoboticRepositories/ObjectPoseEstimation.git
cd ObjectPoseEstimation && git submodule update --init --recursive
```

## Datasets
```
./Datasets/bop/detections/download.sh
```
```
./Datasets/bop/lmo/download.sh
```
```
./Datasets/bop/ycbv/download.sh
```

## [ZS6D](https://github.com/PhilippAuss/ZS6D)

Build the Docker image:
```
./Docker/ZS6D/build.sh
```

Or pull it from Docker hub:
```
./Docker/ZS6D/pull.sh
```

Run a Docker container:
```
./Docker/ZS6D/run.sh 
```

Jupyter is running in the Docker container:
1. [Download templates for YCBV](http://localhost:8888/notebooks/download_templates.ipynb)
2. [Prepare the templates](http://localhost:8888/notebooks/prepare_templates_and_gt.ipynb)
3. [Run an inference test](http://localhost:8888/notebooks/inference_test.ipynb)

## [SAM-6D](https://github.com/JiehongLin/SAM-6D)

Build the Docker image:
```
./Docker/SAM-6D/build.sh
```

Or pull it from Docker hub:
```
./Docker/SAM-6D/pull.sh
```

Run a Docker container:
```
./Docker/SAM-6D/run.sh 
```

Jupyter is running in the Docker container:
1. [Download models](http://127.0.0.1:8888/notebooks/download_models.ipynb)
2. [Render templates](http://127.0.0.1:8888/notebooks/render_templates.ipynb)
3. [Run an inference test](http://localhost:8888/notebooks/inference_demo.ipynb)

## [FoundPose](https://github.com/facebookresearch/foundpose)

Build the Docker image:
```
./Docker/FoundPose/build.sh
```

Or pull it from Docker hub:
```
./Docker/FoundPose/pull.sh
```

Run a Docker container:
```
./Docker/FoundPose/run.sh 
```

Jupyter is running in the Docker container:
1. [Generate](http://localhost:8888/notebooks/gen_templates.ipynb) or [download](http://localhost:8888/notebooks/download_templates.ipynb) templates for LM-O
2. [Generate](http://localhost:8888/notebooks/gen_repre.ipynb) or [download](http://localhost:8888/notebooks/download_repre.ipynb) object representations for LM-O
3. [Run an inference test](http://localhost:8888/notebooks/infer.ipynb)
