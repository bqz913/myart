import glob
from PIL import Image
import os

def mkgif(dir, name, resize=False, size=False):
    files = glob.glob(f'{dir}{name}/*.png')
    images = list(map(lambda file: Image.open(file), files))
    if resize:
        images[0].resize(size).save(f'{name}.gif', save_all=True, append_images=map(lambda im: im.resize(size), images[1:]), duration=20, loop=0)
    else:
        images[0].save(f'{name}.gif', save_all=True, append_images=images[1:], duration=20, loop=0)

if __name__ == "__main__":
    mkgif("sketch3/", "frames", True, (300, 300))