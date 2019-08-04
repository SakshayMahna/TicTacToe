#!/usr/bin/env python

import rospy
from BoardClass import Board
from turn_msg.srv import Turn,TurnResponse

board = Board()
player = 'x'

def hook(player):
    print player + " won!!" 

def update_board(request):
    global player

    if(player == request.player):
	    if(board.put_mark(player, request.x, request.y)):        	
		if(board.check_winner()):
		    rospy.loginfo(player + " won!")
		    return board.board
		if(player == 'x'):
			player = 'o'
		else:
			player = 'x'

		return board.board
	    else:
		   rospy.logerr("This cell is already filled!")
    else:
        rospy.logerr("Another Player's Turn!")
    
        

rospy.init_node("playground_server")

service = rospy.Service("playground", Turn, update_board)
rospy.spin()
