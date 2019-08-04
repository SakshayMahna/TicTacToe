#!/usr/bin/env python

import rospy
from turn_msg.srv import Turn

rospy.init_node("player1")
rospy.wait_for_service("playground")

board = rospy.ServiceProxy("playground", Turn)

x = input()
y = input()

b = board(player='o', x=x, y=y)

print(' '.join(b.r1))
print(' '.join(b.r2))
print(' '.join(b.r3))
