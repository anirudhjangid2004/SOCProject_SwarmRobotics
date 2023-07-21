#!/usr/bin/env python3

from __future__ import print_function
from beginner_tutorials.srv import *
import rospy
import sys

def server_cb(req):
    
    print("Calculating the fibo of %s"%(req.a))
    
    ##Calculation of fibo
    
    fib1 = 1
    fib2 = 1
    
    if (req.a == 1 or  req.a == 2):
        req.a = 1
    
    else:
        j = req.a
        for i in range(j - 2):
            req.a = fib1 + fib2
            fib1 = fib2
            fib2 = req.a

    rospy.sleep(5)
    print(f"Calculated and Returning.....{req.a}\n")
    return fiboResponse(req.a)

try:
    if __name__ == "__main__":
        rospy.init_node("Fibo_server")
        print("\t\t SERVER ON \n\n\n")
        s = rospy.Service('fibo_calculation', fibo, server_cb)
        rospy.spin()
except SerializationError as e:
    print("SERVER FACED AN Issue.....Shutting down")
    print(e)
    sys.exit(1)
