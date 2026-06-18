void game() {
  background(120, 190, 100);

  fill(0);
  textSize(35);
  text("Score: " + score, 250, 100);
  text("Lives: " + score, 550, 100);

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

    image(gif[f[i]], holeX[i], holeY[i], 160, 120);

    if (frameCount % frameSpeed == 0) {
      f[i] = f[i] + 1;

      if (f[i] == numberOfFrames) {
        f[i] = 0;
        playing[i] = false;
      }
    }
  } else {
    image(gif[0], holeX[i], holeY[i], 160, 120);
  }
}


void gameClicks(){

}
