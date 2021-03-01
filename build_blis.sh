# Build blis optimized for raspberry pi 4
# Source: https://github.com/explosion/spaCy/issues/6021#issuecomment-686366867
git clone https://github.com/explosion/cython-blis && cd cython-blis
git pull && git submodule init && git submodule update && git submodule status
pip install -r requirements.txt
git checkout v0.4.2
BLIS_ARCH="cortexa57" python setup.py build_ext --inplace
BLIS_ARCH="cortexa57" python setup.py bdist_wheel
