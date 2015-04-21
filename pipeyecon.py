#!/usr/bin/env python
# coding=utf-8
import os
import sys
import time
from time import sleep

def drawMenu():
    print "-------------------------"
    print "Operation Selection:"
    print "[b]:get battery info"
    print "[e]:exit program"
    print "[Enter]:display this menu"
    print "other string:send to pipeye"
    print "-------------------------"
    
while True:
    drawMenu()
    op = str(raw_input("Operation Selection:"))
    if op == "b":
        if os.path.isdir("/tmp/pipeye") is not True:
            os.mkdir("/tmp/pipeye")
        if os.path.isfile("/tmp/pipeye/givemeinfo.txt") is not True:
            os.mknod("/tmp/pipeye/givemeinfo.txt")
        fp = open("/tmp/pipeye/givemeinfo.txt","w")
        fp.write("givemeinfo")
        fp.close()
        sleep(1)
        if os.path.isfile("/tmp/pipeye/pipeyelog.txt") is True:
            fp = open("/tmp/pipeye/pipeyelog.txt","r")
            info = fp.readline()
            print info
            fp.close()
    elif op == "e":
        sleep(0.5)
        sys.exit()
    else:
        if op != "":
            os.mkdir("/tmp/pipeye/" + str(op)[0:84])
