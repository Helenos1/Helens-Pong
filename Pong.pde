Player1 player1;
Player2 player2;
Ball ball;
import ddf.minim.*; //sound library
 
boolean w = false, s = false, up = false, down = false;

// SOUND FX

  AudioSnippet paddle; //  paddle ball
  Minim minimB; //  paddle ball
  
  AudioSnippet wall; //  wall bounce
  Minim minimW; //  wall bounce

void setup()
{
  
  size(1000, 800);
  smooth();
  
  player1 = new Player1();
  
  player2 = new Player2();
  
  ball = new Ball();
  
  minimB = new Minim(this);
  paddle = minimB.loadSnippet("PaddleBall.wav");

  minimW = new Minim(this);
  wall = minimW.loadSnippet("WallBall.wav");

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
  
  if (keyCode == UP)
  {
    
    up = true;
    
  }
  
  if (keyCode == DOWN)
  {
    
    down = true;
    
  }
  
}

void keyReleased()
{
  
  if (key == 'w')
  {
    
    w = false;
    
  }
  
  if (key == 's')
  {
    
    s = false;
    
  }
  
  if (keyCode == UP)
  {
    
    up = false;
    
  }
  
  if (keyCode == DOWN)
  {
    
    down = false;
    
  }
  
}

void draw()
{
  
  background(0);
  stroke(255);
  fill(255);
  
  player1.update();
  player1.render();
  
  player2.update();
  player2.render();
  
  ball.update();
  ball.render();
  
}
