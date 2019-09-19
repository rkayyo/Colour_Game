void play() {
  textSize(100);
  fill(#ffffff);
  rect(0, 0, 400, 800);
  fill(#000000);
  rect(400, 0, 800, 800);
  fill(0);
  text("TRUE", 200, 200);
  fill(255);
  text("FALSE", 600, 200);
  fill(colors[colorRng]);
  text(colorWords[wordRng], width/2, height/2);
  println(wordRng, colorRng);
}

void playClicks() {
  if (mouseX > 0 && mouseX < 400 && mouseY > 0) {
    if (wordRng == colorRng) {
      score += 1;
      puzzleRng = random(0,1);
      if (puzzleRng < 0.5) {
        while (wordRng == colorRng) {
          colorRng = int(random(0, 5));
          wordRng = int(random(0, 5));
        }
        //text(colorWords[wordRng], width/2, height/2);
      } else if (puzzleRng > 0.5) {
        while (wordRng != colorRng) {
          colorRng = int(random(0, 5));
          wordRng = int(random(0, 5));
        }
        //text(colorWords[wordRng], width/2, height/2);
      }
      text(colorWords[wordRng], width/2, height/2);
    } else {
      mode = gameover;
    }
  }
  if (mouseX > 400 && mouseX < 800 && mouseY > 0) {
    if (wordRng != colorRng) {
      score += 1;
      wordRng = int(random(0, 5));
      text(colorWords[wordRng], width/2, height/2);
    } else {
      mode = gameover;
    }
  }
}
