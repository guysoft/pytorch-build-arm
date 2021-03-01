  export CC=gcc
  export CXX=g++
  export USE_CUDA=0
  export USE_MKLDNN=0
  export USE_NNPACK=0
  export USE_QNNPACK=0
  export USE_NUMPY=1
  export USE_DISTRIBUTED=0
  export NO_CUDA=1
  export NO_DISTRIBUTED=1
  export NO_MKLDNN=1 
  export NO_NNPACK=1
  export NO_QNNPACK=1
  export ONNX_ML=1 ## this is extremely important otherwise you will run into onnx_pb.h error. 
  # other workaround is edit the onnx_pb.h file and add #define ONNX_ML 1 inside it to skip

git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
git checkout v1.7.1
python3 setup.py build
python3 setup.py bdist_wheel
ls -l dist

