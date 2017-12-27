#!/usr/bin/env python2

"""
	z2ply.py
	convert z image to ply file for PCL viewer input 

"""


import cv2
import sys
import matplotlib.pyplot as plt

if __name__ == '__main__':

    if not len(sys.argv) == 2:
        sys.exit('not a valid argc')

    filename = sys.argv[1]

    im = cv2.imread(filename)
    im = cv2.cvtColor(im, cv2.COLOR_BGR2GRAY)

    plt.figure
    plt.imshow(im)
    plt.clim([35,45])
    plt.colorbar()
    plt.show()
    
