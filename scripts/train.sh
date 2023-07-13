XDG_CACHE_HOME=/home/dongtrinh/code/.cache \
CUDA_VISIBLE_DEVICES=MIG-14a6ec43-ef99-5f7a-a915-e006f36e1052 \
BASICSR_JIT=True \
python gfpgan/train.py -opt /home/dongtrinh/code/GFPGAN/options/train_gfpgan_v2_multiple_sattn_face.yml