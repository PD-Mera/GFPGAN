import os, shutil

ROOT_DIR = "/home/damnguyen/dataset/StyleGAN_data256_jpg"
SAVE_DIR = "/home/dongtrinh/code/GFPGAN/data/stylegan2_face"
MAX_IMG = 100000

for idx, image in enumerate(os.listdir(ROOT_DIR)):
    if idx == MAX_IMG:
        break

    image_path = os.path.join(ROOT_DIR, image)
    save_path = os.path.join(SAVE_DIR, image)

    # shutil.copy2(image_path, save_path)