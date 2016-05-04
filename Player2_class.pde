class Player2
{
  
  float player2Speed;
  float player2Height;
  float player2Width;
  float player2X;
  float player2Y;
  
 Player2()
 {
    
  player2X = width - 50;
  player2Y = height * 0.4;
  player2Height = 150;
  player2Width = 30;
    
 }
  
 void update()
 {
   
   if (o == true && player2Y > 0)
    {
     player2Y -= 5;
    }
    
    
   if (l == true && player2Y < height - 150)
    {
      player2Y += 5;
    }  
    
 }

 void render()
 {
   
   stroke(255);
   rect(player2X, player2Y, player2Width, player2Height);
   
 }
  
}
