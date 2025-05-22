FROM lihualiu/sam-6d:1.0

RUN . /root/.bashrc && conda activate sam6d && pip install jupyter

RUN apt-get update && apt-get install -y \
    wget \
 && rm -rf /var/lib/apt/lists/*

RUN . /root/.bashrc && conda activate sam6d \
  && pip install blenderproc==2.6.2 
# && blenderproc pip install matplotlib-inline IPython 
 
WORKDIR /Workspace

CMD ["bash" ,"-c","source /opt/conda/bin/activate && conda activate sam6d && jupyter notebook --no-browser --IdentityProvider.token=''  --notebook-dir=/Workspace"]

