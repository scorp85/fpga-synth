# -*- coding: utf-8 -*-
"""
Created on Fri Jun 14 20:52:57 2019

@author: vitor
"""
from math import cos, sin, radians, fabs
f = open("samples_hex.mem", "w+")

for i in range(512):
    f.write('%02x\n' %(int(255*fabs(cos(radians(i*360/512))))))
f.close()