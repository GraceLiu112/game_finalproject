void option(){
  music.play();
  background(120, 190, 100);
  fill(59, 37, 14);
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
  //slider
  tactile(555, 205, 50, 340);
  line(580, 230, 580, 520);
  strokeWeight(3);
  fill(255);
  circle(580, sliderY, 50);
  frameSpeed = int(map(sliderY, 230, 520, 15, 25));
  spawnSpeed = int(map(sliderY, 230, 520, 80, 120));
  
  //start button
  tactile(480, 580, 200, 100);
  rect(480, 580, 200, 100);
  fill(59, 37, 14);
  textSize(80);
  textFont(funny);
  text("OK", 580, 635);

}

void controlSlider(){
  if (mouseX > 555 && mouseX < 605 && mouseY > 230 && mouseY < 520){
    sliderY = mouseY;
  }

}


void optionClicks(){
  if (mouseX > 92 && mouseX < 362 && mouseY > 230 && mouseY < 430) {
    theme = MOLE;
    setHoles();
  } 
  if (mouseX > 92 && mouseX < 362 && mouseY > 480 && mouseY < 680) {
    theme = RABBIT;
    setHoles();
  } 
  if (mouseX > 480 && mouseX < 680 && mouseY > 580 && mouseY < 680) {
    mode = INTRO;
  }  
}
