export XDG_CACHE_HOME=/home/dongtrinh/code/.cache

# Upgrade pip
pip install -U pip --no-cache-dir

# Install libraries
pip install -r requirements.txt -f https://download.pytorch.org/whl/torch_stable.html

# Install pyblur
git clone https://github.com/PD-Mera/pyblur.git
pip install -e pyblur

# Set CUDA environments
export CUDA_VER=11.4
export PATH=/usr/local/cuda-$CUDA_VER/bin:$PATH
export LD_LIBRARY_PATH=/usr/local/cuda-$CUDA_VER/lib64${LD_LIBRARY_PATH:+:${LD_LIBRARY_PATH}}
export CUDA_HOME=/usr/local/cuda-$CUDA_VER
echo "**********"
echo "Setup CUDA_VER $CUDA_VER completed"
echo "**********"

# Install basicsr
git clone https://github.com/PD-Mera/BasicSR
BASICSR_JIT=True BASICSR_EXT=True pip install -e BasicSR

# Install facexlib
git clone https://github.com/xinntao/facexlib
pip install -e facexlib

# Install GFPGAN
CUDNN_INCLUDE_DIR=/usr/local/cuda-$CUDA_VER \
CUDNN_LIB_DIR=/usr/local/cuda-$CUDA_VER \
BASICSR_JIT=True BASICSR_EXT=True pip install -e .