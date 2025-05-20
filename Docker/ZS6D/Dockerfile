FROM pytorch/pytorch:2.0.1-cuda11.7-cudnn8-runtime

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    build-essential \
    ca-certificates \
    curl \
    gcc \
    ffmpeg \
    freeglut3 \
    freeglut3-dev \
    git \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libsm6 \
    libxext6 \
    libxext-dev \
    libxt-dev \
    lsb-release \
    python3-dev \
    wget \
 && rm -rf /var/lib/apt/lists/*

RUN ln -sv /usr/bin/python3 /usr/bin/python

RUN wget https://bootstrap.pypa.io/get-pip.py \
 && python3 get-pip.py \
 && rm get-pip.py

RUN python3 -m pip install \
    git+https://github.com/lucasb-eyer/pydensecrf.git \
    imageio \
    jupyter \
    kmeans-pytorch \
    matplotlib \
    numba \
    opencv-python \
    plyfile \
    pyglet==1.2.4 \
    pyopengl==3.1.1a1 \
    pypng \
    scikit-learn \
    timm \
    tqdm \
    transforms3d \
    trimesh \
    vispy==0.12.2

# Install additional packages for template generation
RUN apt-get update && apt-get install -y \
    libegl1-mesa-dev \
    libgles2-mesa-dev \
    mesa-utils-extra \
    xvfb \
 && rm -rf /var/lib/apt/lists/*
 
 # Install additional packages for downloading and uncompressing templates
RUN apt-get update && apt-get install -y \
    unzip \
 && rm -rf /var/lib/apt/lists/*
 
WORKDIR /Workspace

