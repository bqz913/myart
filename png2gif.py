import glob
from PIL import Image
import os

def mkgif(name):
    files = glob.glob(f'{name}/*.png')
    images = list(map(lambda file: Image.open(file), files))

    images[0].save(f'{name}.gif', save_all=True, append_images=images[1:], duration=20, loop=0)

if __name__ == "__main__":
    mkgif("frames")