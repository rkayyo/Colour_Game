void intro(){
  background(0);
  textSize(70);
  fill(random(0,255),random(0,255),random(0,255));
  text("ColourGame",width/2,300);
  if(mouseX > 250 && mouseX < 550 && mouseY > 495 && mouseY < 650){
    textSize(80);
    fill(red);
    rect(250,495 , 300,150);
    fill(blue);
    text("Start", 395, 565);
  }else{
    fill(255);
    rect(250,495 , 300,150);
    fill(0);
    text("Start", 400, 565);
  }
}

void introClicks(){
     if(mouseX > 250 && mouseX < 550 && mouseY > 495 && mouseY < 650){
    mode = play;
   }
}
