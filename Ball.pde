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
  
  if( ballX > width - (ballW / 2))  // right wall (resets to centre)
  {
  
    ballX = (width / 2) - (ballW / 2);
    ballY = (height / 2) - (ballW / 2); 
    ballSpeedX = -ballSpeedX;
 
  }
  
  if(ballX < (0 + ballW / 2))  // left wall (resets to centre)
  {
  
   ballSpeedX = -ballSpeedX;  
   ballX = (width / 2) - (ballW / 2);
   ballY = (height / 2) - (ballW / 2); 
 
  }

  }
  
  
  void render()
  {
    
   ellipse(ballX, ballY, ballW, ballW);
    
  }
  
}
