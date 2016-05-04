class Ball
{
  
  int ballX;
  int ballY;
  int ballW;

  Ball()
  {
   
  ballX = width/2;
  ballY = height/2;
  ballW = 20; 
    
  }
  
  void update()
  {
    
   
    
  }
  
  void render()
  {
    
   ellipse(ballX, ballY, ballW, ballW);
    
  }
  
}
