class Ball
{
  
  int ballX;
  int ballY;
  int ballW;
  int ballSpeedX = 4;
  int ballSpeedY = 6;

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
    wall.rewind();
    wall.play();
    
  }
    
  if(ballY < (0 + ballW / 2))  // top wall
  {
    
    ballSpeedY = -ballSpeedY;
    wall.rewind();
    wall.play();
    
  }
  
  if( ballX > width + (ballW / 2))  // right wall (resets to centre)
  {
  
    ballX = (width / 2) - (ballW / 2);
    ballY = (height / 2) - (ballW / 2); 
    ballSpeedX = -ballSpeedX;
    lives2 = lives2 - 1;
 
  }
  
  if(ballX < (0 - ballW / 2))  // left wall (resets to centre)
  {
  
   ballSpeedX = -ballSpeedX;  
   ballX = (width / 2) - (ballW / 2);
   ballY = (height / 2) - (ballW / 2); 
   lives = lives - 1;
 
  }
  
     //  Ball interactions with paddles
  
  //  Player 1
  
  if(ballX - (ballW / 2) < player1.playerX + (player1.playerWidth)
  && ballY < player1.playerY + player1.playerHeight
  && ballY + (ballW / 2) > player1.playerY
  && ballSpeedX < 0)
  {
   
   paddle.rewind();
   paddle.play();
   ballSpeedX = -ballSpeedX; 
   
  }
  
  //  Player 2
  
  if((ballX) > player2.player2X 
  && (ballY + ballW) > player2.player2Y 
  && ballY < (player2.player2Y + player2.player2Height)
  && ballSpeedX > 0)
  {
   
   paddle.rewind();
   paddle.play(); 
   ballSpeedX = -ballSpeedX; 
    
  }

  }
  
  
  void render()
  {
    
   ellipse(ballX, ballY, ballW, ballW);
    
  }
  
}
