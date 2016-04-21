Player1 player1;
int ballX;
int ballY;
int ballW;

void setup()
{
  
  size(1000, 800);
  smooth();
  
  player1 = new Player1();
  
  ballX = width/2;
  ballY = height/2;
  ballW = 20;
  

}

void keyPressed()
{
 
 
  
}

void keyReleased()
{
  

  
}

void draw()
{
  
  background(0);
  stroke(255);
  fill(255);
  player1.update();
  player1.render();
  ellipse(ballX, ballY, ballW, ballW);
  
}


