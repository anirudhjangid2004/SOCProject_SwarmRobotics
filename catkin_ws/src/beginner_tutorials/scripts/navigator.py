#!/usr/bin/env python3

from __future__ import print_function
from beginner_tutorials.srv import *
import rospy

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
    return fiboResponse(req.a)

if __name__ == "__main__":
    rospy.init_node("Fibo_server")
    s = rospy.Service('fibo_calculation', fibo, server_cb)
    rospy.spin()
