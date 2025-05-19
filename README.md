# ObjectPoseEstimation

Clone the repository:
```
git clone https://github.com/RoboticRepositories/ObjectPoseEstimation.git
cd ObjectPoseEstimation && git submodule update --init --recursive
```

## ZS6D

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
1. [Prepare the templates](http://localhost:8888/notebooks/prepare_templates_and_gt.ipynb)
2. [Run an inference test](http://localhost:8888/notebooks/inference_test.ipynb)

## SAM-6D

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
1. [Run an inference test](http://localhost:8888/notebooks/inference_demo.ipynb)

## FoundPose

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
1. [Run an inference test](http://localhost:8888/notebooks/infer.ipynb)
