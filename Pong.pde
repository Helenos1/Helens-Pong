Player1 player1;
Player2 player2;

int ballX;
int ballY;
int ballW;
boolean w = false, s = false, UP = false, DOWN = false;

void setup()
{
  
  size(1000, 800);
  smooth();
  
  player1 = new Player1();
  
  player2 = new Player2();
  
  ballX = width/2;
  ballY = height/2;
  ballW = 20;
  

}

void keyPressed()
{
 
  if (key == 'w')
  {
    w = true;
  }
  
  if (key == 's' )
  {
    s = true;
  }
  
}

void keyReleased()
{
  
  if (key=='w')
  {
    w = false;
  }
  
  if (key=='s')
  {
    s = false;
  }
  
}

void draw()
{
  
  background(0);
  stroke(255);
  fill(255);
  player1.update();
  player1.render();
  ellipse(ballX, ballY, ballW, ballW);
  player2.update();
  player2.render();
  
}


