void pause(){
  stroke(0);
  fill(255);
  circle(100, 100, 100);
  fill(0);
  textSize(80);
  text("PAUSE", 390, 350);
  text(">", 100, 100);

}

void pauseClicks(){
  if(dist(mouseX, mouseY, 100, 100) < 50){
    mode = GAME;
  }
}
