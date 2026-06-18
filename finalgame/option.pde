void option(){
  background(120, 190, 100);
  textSize(80);
  textFont(funny);
  text("OPTION", 395, 130);
  fill(255);
  tactile(92, 230, 270, 200);
  rect(92, 230, 270, 200);
  image(Mole1, 102, 237, 250, 190);
  tactile(92, 480, 270, 200);
  rect(92, 480, 270, 200);
  image(Rabbit1, 110, 442, 240, 250);
  fill(0);
  strokeWeight(5);
  line(580, 230, 580, 520);
  strokeWeight(3);
  fill(255);
  circle(580, 350, 50);
  rect(480, 580, 200, 100);

}


void optionClicks(){
  if ((mouseX > 92 && mouseX < 322 && mouseY > 270 && mouseY < 470) || (mouseX > 92 && mouseX < 322 && mouseY > 480 && mouseY < 680)) {
    mode = INTRO;
  }  
}
