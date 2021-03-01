FROM python:3.8

# system packages installation
RUN apt update && apt install -y curl libopenblas-dev libmagic1 libboost-all-dev libxrender-dev liblapack-dev git bzip2 cmake build-essential libsm6 libglib2.0-0 libgl1-mesa-glx libopenblas-dev libblas-dev m4 cmake cython python3-yaml libatlas-base-dev --no-install-recommends
RUN pip install pyyaml

