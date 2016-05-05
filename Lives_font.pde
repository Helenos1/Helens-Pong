void lives()
{
  
font = loadFont("Airstrike-30.vlw");
textFont(font);
fill(255);
text(lives, 175, height - 30);  //  player 1
text("Lives =", 100, height - 30);

text(lives2, 930, height - 30);  //  player 2
text("Lives =", 850, height - 30);

if(lives == 0 || lives2 == 0)
{
  
 setup(); //resets game
 lives = 3;
 lives2 = 3;
  
}

}

