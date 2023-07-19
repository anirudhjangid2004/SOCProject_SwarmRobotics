#!/usr/bin/env python3

from __future__ import print_function
from beginner_tutorials.srv import *
import rospy

def server_cb(req):
    print("Returning [%s + %s = %s]"%(req.a, req.b, (req.a + req.b)))
    return AddTwoIntsResponse(req.a + req.b)

if __name__ == "__main__":
    rospy.init_node('add_two_ints_server')
    s = rospy.Service('add_two_ints', AddTwoInts, server_cb)
    rospy.spin()
