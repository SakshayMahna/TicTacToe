class Board:

    def __init__(self):
        self.board = [[' ', ' ', ' '], [' ', ' ', ' '], [' ', ' ', ' ']]
        self.over = False

    def put_mark(self, turn, x, y):
        if(self.board[x-1][y-1] == 'x' or self.board[x-1][y-1] == 'o'):
            return False
        else:
            self.board[x-1][y-1] = turn
            return True

    def check_winner(self):
        #Horizontal
        for i in range(0,3):
            if(self.board[i][0] == 'x' and self.board[i][1] == 'x' and self.board[i][2] == 'x'):
                self.over = True
            elif(self.board[i][0] == 'y' and self.board[i][1] == 'y' and self.board[i][2] == 'y'):
                self.over = True
        
        #Veritcal
        for i in range(0, 3):
            if(self.board[0][i] == 'x' and self.board[1][i] == 'x' and self.board[2][i] == 'x'):
                self.over = True
            elif(self.board[0][i] == 'o' and self.board[1][i] == 'o' and self.board[2][i] == 'o'):
                self.over = True

        #Diagonal
        if(self.board[0][0] == 'x' and self.board[1][1] == 'x' and self.board[2][2] == 'x'):
            self.over = True
        elif(self.board[0][0] == 'o' and self.board[1][1] == 'o' and self.board[2][2] == 'o'):
            self.over = True

        return self.over

    
if __name__ == "__main__":
	print "F"
