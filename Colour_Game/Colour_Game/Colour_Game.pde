color purple = #AB1F4A;
color pink = #FF97A4;
color blue = #0000ff;
color green = #00ff00;
color red = #ff0000;
int wordRng = int(random(0, 5));
int colorRng = int(random(0, 5));
float puzzleRng = random(0, 1);

int timer = 70;
int n = 0;
int wordSize = 100;


int score;
int highScore = score;


final int intro = 0;
final int play = 1;
final int gameover = 2;
int mode = intro;

color[] colors = {purple, pink, blue, green, red};
String[] colorWords = {"Purple", "Pink", "Blue", "Green", "Red"};



void setup() {
  size(800, 800); 
  textAlign(CENTER, CENTER);
}

void draw() {
  if (mode == intro) {
    intro();
  } else if (mode == play) {
    play();
  } else if (mode == gameover) {
    gameover();
  } else {
    println("Mode Error");
  }
}

void mouseReleased() {
  if (mode == intro) {
    introClicks();
  } else if (mode == play) {
    playClicks();
  } else if (mode == gameover) {
    gameoverClicks();
  } else {
    println("Mode Error");
  }
}
