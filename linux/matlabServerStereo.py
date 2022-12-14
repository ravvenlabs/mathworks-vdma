# Dr. Kaputa
# Matlab Server
from numpysocket import NumpySocket
import cv2
import numpy as np
import time
import mmap
import struct
import sys, random
import ctypes
import copy
from frameGrabber import ImageProcessing
from frameGrabber import ImageFeedthrough
from frameGrabber import ImageWriter

camProcessed = ImageProcessing()
camFeedthrough = ImageFeedthrough()
camWriter = ImageWriter()

npSocket = NumpySocket()
npSocket.startServer(9999)

simulink = True
if simulink == True:
    f1 = open("/dev/mem", "r+b")
    simulinkMem = mmap.mmap(f1.fileno(), 1000, offset=0x43c60000)
    simulinkMem.seek(0) 
    simulinkMem.write(struct.pack('l', 1))       # reset IP core
    simulinkMem.seek(8)                         
    simulinkMem.write(struct.pack('l', 752))     # image width
    simulinkMem.seek(12)                        
    simulinkMem.write(struct.pack('l', 480))     # image height
    simulinkMem.seek(16)                        
    simulinkMem.write(struct.pack('l', 94))       #  horizontal porch
    simulinkMem.seek(20)                        
    simulinkMem.write(struct.pack('l', 1000))     #  vertical porch when reading from debug
    simulinkMem.seek(4) 
    simulinkMem.write(struct.pack('l', 1))       # enable IP core

print "entering main loop"

while(1):
    cmd = npSocket.receiveCmd()
    if cmd == '0':
        print "received frame from matlab"
        data = npSocket.receive()
        reshaped = np.reshape(data,(480, 752,8))
        print "writing frame to FPGA"
        camWriter.setFrame(reshaped)
    elif cmd == '1':
        print "sending feedthrough frame to matlab"
        frameLeft,frameRight = camFeedthrough.getStereoGray()
        tempImageLeft = np.ascontiguousarray(frameLeft, dtype=np.uint8) 
        tempImageRight = np.ascontiguousarray(frameRight, dtype=np.uint8) 
        npSocket.send(tempImageLeft)
    elif cmd == '2':
        print "sending processed frames to matlab"
        frameLeft,frameRight = camProcessed.getStereoGray()
        frameLeft,frameRight = camProcessed.getStereoGray()
        frameLeft,frameRight = camProcessed.getStereoGray()
        tempImageLeft = np.ascontiguousarray(frameLeft, dtype=np.uint8) 
        tempImageRight = np.ascontiguousarray(frameRight, dtype=np.uint8) 
        npSocket.send(tempImageLeft)
        npSocket.send(tempImageRight) 
    elif cmd == '3':
        print "sending raw frames to matlab"
        frameLeft,frameRight = camFeedthrough.getStereoGray()
        tempImageLeft = np.ascontiguousarray(frameLeft, dtype=np.uint8) 
        tempImageRight = np.ascontiguousarray(frameRight, dtype=np.uint8) 
        npSocket.send(tempImageLeft)
        npSocket.send(tempImageRight) 
    else:
        break
npSocket.close()