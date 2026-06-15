void intro(){
  background(191, 162, 133);
  fill(255);
  textSize(80);
  text("CLICKER GAME", 390, 300);

  rect(200, 550, 250, 100);


  rect(600, 550, 250, 100);
  
  fill(0);
  textSize(50);
  text("Start", 195, 550);
  text("Options", 600, 550);
}

void introClicks(){
  if(mouseX > 75 && mouseX < 325 && mouseY > 500 && mouseY < 600){
    mode = GAME;
  }
  if (mouseX > 475 && mouseX < 725 && mouseY > 500 && mouseY < 600) {
    mode = OPTIONS;
  }
}
