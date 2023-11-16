FROM nvidia/cuda:11.4.3-runtime-ubuntu20.04



# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install system dependencies
RUN apt-get update && apt-get install -y git python3-pip python3-dev python3-opencv libglib2.0-0

# Upgrade pip
RUN python3 -m pip install --upgrade pip

# Install PyTorch and torchvision
RUN pip3 install torch torchvision torchaudio -f https://download.pytorch.org/whl/cu111/torch_stable.html

RUN pip3 install jupyterlab numpy matplotlib pandas seaborn ipywidgets scipy

# RUN other pip install ...

RUN mkdir /home/working-dir

WORKDIR /home/working-dir

# -- Run any setup scripts