#!/usr/bin/env python3

from __future__ import print_function

import sys
import rospy
from beginner_tutorials.srv import *

def fibo_client(x):
    rospy.wait_for_service('fibo_calculation')
    req_num = rospy.ServiceProxy('fibo_calculation', fibo)
    resp1 = req_num(x)
    return resp1.b

if __name__ == "__main__":
    if len(sys.argv) == 2:
        x = int(sys.argv[1])
    else:
        print("Server demanded more inputs\nplease check for additional entries")
        sys.exit(1)
    print(f"Requesting Fibonacci Number of {x} position")
    print(f"{x} --> {fibo_client(x)}")

