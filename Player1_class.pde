class Player1
{
  
  //float player1Speed;
  float playerHeight;
  float playerWidth;
  float playerX;
  float playerY;
 
 Player1()
 {
  
  playerX = 20;
  playerY = height * 0.4;
  playerHeight = 150;
  playerWidth = 30;
   
 }
 
 void update()
 {
  
   if (w == true && playerY > 0)  // moves the player and stops the player going off the top of the screen
    {
     playerY -= 5;
    }
    
    
   if (s == true && playerY < height - 150)  // moves the player and stops the player going past the bottom of the screen
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

