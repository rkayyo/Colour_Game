void play() {
  textSize(wordSize);
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
  text(score, 400, 100);
  if (score >= highScore) {
    highScore = score;
  }
  if (n <= timer) {
    
    if (wordSize <= 25) {
      wordSize = 25;
    }
    if (n >= timer) {
      mode = gameover;
    } else {
      n++;
      wordSize--;
    }
  }
}

void playClicks() {
  if (mouseX > 0 && mouseX < 400 && mouseY > 0) {
    if (wordRng == colorRng) {
      randomize();
    } else {
      mode = gameover;
    }
  }
  if (mouseX > 400 && mouseX < 800 && mouseY > 0) {
    if (wordRng != colorRng) {
      randomize();
    } else {
      mode = gameover;
    }
  }
}

void randomize() {
  score += 1;
  n = 0;
  wordSize = 100;
  puzzleRng = random(0, 1);
  if (puzzleRng < 0.5) {
    do {
      colorRng = int(random(0, 5));
      wordRng = int(random(0, 5));
    } while (wordRng == colorRng);
  } else {
    colorRng = int(random(0, 5));
    wordRng = colorRng;
  }
  text(colorWords[wordRng], width/2, height/2);
}
