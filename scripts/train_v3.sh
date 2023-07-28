XDG_CACHE_HOME=/home/dongtrinh/code/.cache \
CUDA_VISIBLE_DEVICES=MIG-66ed4b87-9fdb-53ee-946d-b67e2b46a09c \
BASICSR_JIT=True \
python gfpgan/train.py -opt /home/dongtrinh/code/GFPGAN/options/train_gfpgan_v3_multiple_sattn_face.yml