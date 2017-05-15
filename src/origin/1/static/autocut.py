#!/usr/bin/python
from PIL import Image
from imageTools import grey

LENGTH = 58

def main():
    imgObj = grey(Image.open("static.png"))
    for y in range(4):
        for x in range(7):
            newObj = imgObj.crop((3+x*74, 4+y*75, 59+x*74, 60+y*75))
            newObj.save(str(y) + str(x) + '.png')

if __name__ == '__main__':
    main()
