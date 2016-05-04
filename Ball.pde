class Ball
{
  
  int ballX;
  int ballY;
  int ballW;
  int ballSpeedX = 3;
  int ballSpeedY = 5;

  Ball()
  {
   
  ballX = (width / 2) - (ballW / 2);
  ballY = (height / 2) - (ballW / 2);
  ballW = 20; 

  }
  
  void update()
  {  
    
  ballX = ballX + ballSpeedX;
  ballY = ballY + ballSpeedY;
  
  
  //  Ball reactions with walls
  
  if(ballY > height - (ballW / 2))  // bottom wall
  {
    
    ballSpeedY = -ballSpeedY;
    
  }
    
  if(ballY < (0 + ballW / 2))  // top wall
  {
    
    ballSpeedY = -ballSpeedY;
    
  }
  
  if( ballX > width + (ballW / 2))  // right wall (resets to centre)
  {
  
    ballX = (width / 2) - (ballW / 2);
    ballY = (height / 2) - (ballW / 2); 
    ballSpeedX = -ballSpeedX;
 
  }
  
  if(ballX < (0 - ballW / 2))  // left wall (resets to centre)
  {
  
   ballSpeedX = -ballSpeedX;  
   ballX = (width / 2) - (ballW / 2);
   ballY = (height / 2) - (ballW / 2); 
 
  }
  
     //  Ball interactions with paddles
  
  //  Player 1
  
  if(ballX - (ballW / 2) < player1.playerX + (player1.playerWidth)
  && ballY < player1.playerY + player1.playerHeight
  && ballY + (ballW / 2) > player1.playerY
  && ballSpeedX < 0)
  {
   
   ballSpeedX = -ballSpeedX; 
   
  }
  
  //  Player 2
  
  if((ballX) > player2.player2X 
  && (ballY + ballW) > player2.player2Y 
  && ballY < (player2.player2Y + player2.player2Height)
  && ballSpeedX > 0)
  {
    
   ballSpeedX = -ballSpeedX; 
    
  }

  }
  
  
  void render()
  {
    
   ellipse(ballX, ballY, ballW, ballW);
    
  }
  
}
