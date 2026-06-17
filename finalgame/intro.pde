void intro(){
  background(120, 190, 100);
  textSize(80);
  textFont(funny);
  text("WHACK A MOLE", 395, 130);
  textSize(40);
  text("Click the moles before they disappear!", 400, 200);
  image(Mole, 235, 405, 330, 370);
  fill(255);
  tactile(92, 320, 230, 90);
  rect(92, 320, 230, 90);
  tactile(480, 320, 230, 90);
  rect(480, 320, 230, 90);
  fill(0);
  textSize(60);
  text("Start", 207, 365);
  text("Options", 597, 365);

  
}

void introClicks(){
  if (mouseX > 92 && mouseX < 322 && mouseY > 320 && mouseY < 410) {
    mode = GAME;
  }
  if (mouseX > 480 && mouseX < 710 && mouseY > 320 && mouseY < 410) {
    mode = OPTION;
  }
 

}
