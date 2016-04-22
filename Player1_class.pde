class Player1
{
  
  float player1Speed;
  float playerHeight;
  float playerWidth;
  float playerX;
  float playerY;
 
 Player1()
 {
  
  playerX = 20;
  playerY = height / 2;
  playerHeight = 150;
  playerWidth = 30;
   
 }
 
 void update()
{
  
   if (w == true && playerY > 0)
    {
     playerY -= 5;
    }
    
    
   if (s == true && playerY < height - 150)
    {
      playerY += 5;
    }
    
}
 
 void render()
{
   stroke(255);
   rect(playerX, playerY, playerWidth, playerHeight);
  
  
}
 
  
}

