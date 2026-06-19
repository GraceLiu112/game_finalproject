//font
PFont funny;

// animation
PImage[] gif; 
PImage[] gif1; 
PImage Mole;
PImage Mole1;
PImage Rabbit1;
PImage Rabbit;
int numberOfFrames;
int numberOfRabbitFrames;

//choose
int theme;
final int MOLE = 1;
final int RABBIT = 2;

// game
int score, lives, highestScore;

float[] holeX = new float[9];
float[] holeY = new float[9];

int[] f = new int[9];
boolean[] playing = new boolean[9];

float sliderY;

int frameSpeed;
int spawnSpeed;

//mode
int mode;
final int INTRO = 1;
final int GAME = 2;
final int PAUSE = 3;
final int GAMEOVER = 4;
final int OPTION = 5;


void setup() {
  size(800, 800);
  textAlign(CENTER, CENTER);
  
  mode = INTRO;
  
  theme = MOLE;
  setHoles();
  
  funny = createFont("Animal Paw.ttf", 80);
  Mole = loadImage("Mole.png");
  Rabbit = loadImage("rabbitcartoon.png");
  Mole1 = loadImage("frame_5_delay-0.25s.gif");
  Rabbit1 = loadImage("frame_3_delay-1s.png");

  // animation
  numberOfFrames = 10;
  gif = new PImage[numberOfFrames];
  numberOfRabbitFrames = 4;
  gif1 = new PImage[numberOfRabbitFrames];

  int i = 0;
  while (i < numberOfFrames) {
    gif[i] = loadImage("frame_" + i + "_delay-0.25s.gif");
    i = i + 1;
  }
  
  i = 0;
  while (i < numberOfRabbitFrames) {
    gif1[i] = loadImage("frame_" + i + "_delay-1s.png");
    i = i + 1;
  }

  // game variables
  score = 0;
  lives = 5;
  highestScore = 0;
  frameSpeed = 15;
  spawnSpeed = 80;
  sliderY = 350;


}

void draw(){
  if(mode == INTRO){
    intro();
  }
  else if(mode == GAME){
    game();
  }
  else if(mode == PAUSE){
    pause();
  }
  else if(mode == GAMEOVER){
    gameover();
  }
  else if(mode == OPTION){
    option();
  }
  else{
    println("Error: Mode = " + mode);
  }

}

void setHoles(){
  int index = 0;
  
  int row = 0;
  while (row < 3) {

    int col = 0;
    while (col < 3) {
      
      if(theme == MOLE){
        holeX[index] = 168 + col * 220;
        holeY[index] = 270 + row * 170;
      }
      if(theme == RABBIT){
        holeX[index] = 182 + col * 220;
        holeY[index] = 248 + row * 170;
      }


      f[index] = 0;
      playing[index] = false;

      index = index + 1;
      col = col + 1;
    }

    row = row + 1;
  }

}

void tactile(int x, int y, int increaseX, int increaseY){
  if (mouseX > x && mouseX < x + increaseX && mouseY > y && mouseY < y + increaseY) {
    strokeWeight(5);
    stroke(19, 25, 14);
  } else {
    strokeWeight(3);
    stroke(0);
  }

}
