void game() {
  music.play();
  if(lives <= 0){
    mode = GAMEOVER;
  }
  background(120, 190, 100);

  fill(59, 37, 14);
  textSize(35);
  text("Score: " + score, 250, 100);
  text("Lives: " + lives, 550, 100);
  
  //pause button
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  strokeWeight(5);
  line(85, 75, 85, 125);
  line(110, 75, 110, 125);

  // random mole comes out
  if (frameCount % spawnSpeed == 0) {
    int r = int(random(9));

    if (playing[r] == false) {
      playing[r] = true;
      f[r] = 0;
    }
  }

  int i = 0;
  while (i < 9) {
    drawOneMole(i);
    i = i + 1;
  }
}

void drawOneMole(int i) {
  imageMode(CENTER);

  if (playing[i] == true) {
    if(theme == MOLE){
      image(gif[f[i]], holeX[i], holeY[i], 160, 120);
      if (frameCount % frameSpeed == 0) {
        f[i] = f[i] + 1;

        if (f[i] == numberOfFrames) {
          f[i] = 0;
          playing[i] = false;
          lives = lives - 1;
        }
      }
    }
    if(theme == RABBIT){
      image(gif1[f[i]], holeX[i], holeY[i], 150, 110);
      if (frameCount % frameSpeed == 0) {
        f[i] = f[i] + 1;

        if (f[i] == numberOfRabbitFrames) {
          f[i] = 0;
          playing[i] = false;
          lives = lives - 1;
        }
      }
    }

  } else {
    if(theme == MOLE){
      image(gif[0], holeX[i], holeY[i], 160, 120);
    }
    if(theme == RABBIT){
      image(gif1[0], holeX[i], holeY[i], 150, 110);
    }
  }
}


void gameClicks(){
  if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = PAUSE;
  }
}
