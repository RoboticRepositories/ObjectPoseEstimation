FROM lihualiu/sam-6d:1.0

RUN . /root/.bashrc && conda activate sam6d && pip install jupyter

RUN apt-get update && apt-get install -y \
    wget \
 && rm -rf /var/lib/apt/lists/*

RUN . /root/.bashrc && conda activate sam6d && blenderproc pip install matplotlib-inline IPython
 
WORKDIR /Workspace

