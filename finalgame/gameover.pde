void gameover(){
  fill(59, 37, 14);
  background(120, 190, 100);
  textSize(80);
  text("GAME OVER", 395, 130);
  textSize(60);
  text("Current Score: " + score, 390, 300);
  if(score > highestScore){
    highestScore = score;
  }
  text("Highest Score: " + highestScore, 390, 400);
  textSize(40);
  //tactile(220, 540, 340, 80);
  text("<Click To Restart>", 390, 580);
}



void gameoverClicks(){
  //if (mouseX > 220 && mouseX < 560 && mouseY > 540 && mouseY < 620) {
  //  mode = INTRO;
  //}    
}
