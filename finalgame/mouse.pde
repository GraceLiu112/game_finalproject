void mouseReleased(){
  if(mode == INTRO){
    introClicks();
  }
  else if(mode == GAME){
    gameClicks();
  }
  else if(mode == PAUSE){
    pauseClicks();
  }
  else if(mode == GAMEOVER){
    gameoverClicks();
  }
  else if(mode == OPTION){
    optionClicks();
  }
}

void mousePressed() {
  int i = 0;

  while (i < 9) {

    if (playing[i] == true) {

      if (f[i] >= 4 && f[i] <= 6) {

        if (mouseX > holeX[i] - 80 && mouseX < holeX[i] + 80 &&
            mouseY > holeY[i] - 60 && mouseY < holeY[i] + 60) {

          score = score + 1;

          playing[i] = false;
          f[i] = 0;
        }
      }
    }

    i = i + 1;
  }
}
