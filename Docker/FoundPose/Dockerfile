FROM pytorch/pytorch:2.4.1-cuda12.4-cudnn9-runtime

COPY ./Docker/FoundPose/environment.yml .

RUN conda init bash

RUN conda update conda \
 && conda update conda-build

RUN conda install -n base conda-libmamba-solver \
 && conda config --set solver libmamba

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get install -y \
    git \
 && rm -rf /var/lib/apt/lists/*
 
RUN . /root/.bashrc && conda activate && conda env update --file environment.yml 

RUN apt-get update && apt-get install -y \
    build-essential \
    ca-certificates \
    curl \
    gcc \
    ffmpeg \
    freeglut3 \
    freeglut3-dev \
    libgl1-mesa-dev \
    libglu1-mesa-dev \
    libsm6 \
    libxext6 \
    libxext-dev \
    libxt-dev \
    lsb-release \
    python3-dev \
    wget \
    unzip \
 && rm -rf /var/lib/apt/lists/*

RUN . /root/.bashrc && conda activate && pip install matplotlib==3.7.0

WORKDIR /Workspace

