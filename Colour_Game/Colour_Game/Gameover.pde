void gameover(){

  background(0);
  textSize(100);
  fill(255);
  text("GAME OVER!", 400, 200);
  text("High Score: " + highScore, width/2, 400);

  
  
  
  
  if(mouseX > 250 && mouseX < 550 && mouseY > 495 && mouseY < 650){
    fill(red);
    rect(250,495 , 300,150);
    fill(blue);
    text("Retry", 395, 565);
  }else{
    fill(255);
    rect(250,495 , 300,150);
    fill(0);
    text("Retry", 415, 565);
  }
}


void gameoverClicks(){
   if(mouseX > 250 && mouseX < 550 && mouseY > 495 && mouseY < 650){
    mode = play;
    score = 0;
    colorRng = int(random(0, 5));
    wordRng = int(random(0, 5));
    n = 0;
    wordSize = 100;
   }
}
