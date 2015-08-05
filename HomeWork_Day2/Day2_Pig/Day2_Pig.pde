//Global Variables

int xPos;
int yPos;

PImage bg;


void setup(){
  size(700, 700);
  xPos = width/7;
  yPos = 0;
  
  bg = loadImage("bg_image.jpg");
}


void draw() {
  background(182, 255, 255);
//  if(mouseX > yPos){
    yPos = yPos + 3;
//  }
  
  noStroke();
  fill(255, 222, 0);
  ellipse(xPos, yPos, 140, 140);
  
  if(yPos > 475){
    background(bg);
   
  }  

 //Here comes the sun
  //noStroke();
  //fill(255, 222, 0);
  //ellipse(mouseX, mouseY, 120, 120);
  
  //Grass
  noStroke();
  fill(192, 255, 137);
  rect(0, 475, 700, 225);


  //Making a Pig

  //Body
  fill(247, 173, 188);
  stroke(0);
  strokeWeight(6);
  ellipse(width/2, (height/2)+30, 400, 400);


  //Ears
  fill(247, 173, 188);
  stroke(0);
  strokeWeight(6);
  ellipse((width/2)+75, (height/2)-190, 50, 90);
  ellipse((width/2)-75, (height/2)-190, 50, 90);

  //Head
  fill(247, 173, 188);
  stroke(0);
  strokeWeight(6);
  ellipse((width/2), (height/2)-60, 300, 300);

  //Eyes
  fill(255);
  stroke(0);
  strokeWeight(6);
  ellipse((width/2)-55, (height/2)-105, 85, 85);
  ellipse((width/2)+55, (height/2)-105, 85, 85);

  //Eyes Balls
  fill(0);
  ellipse((width/2)-45, (height/2)-95, 25, 25);
  ellipse((width/2)+45, (height/2)-95, 25, 25);

  //Nose
  fill(247, 173, 188);
  stroke(0);
  strokeWeight(6);
  ellipse((width/2), (height/2)-5, 130, 100);

  //Nostrils
  //Eyes Balls
  fill(0);
  ellipse((width/2)-25, (height/2)-10, 25, 25);
  ellipse((width/2)+25, (height/2)-10, 25, 25);

  //Hooves
  fill(100, 19, 35);
  stroke(0);
  strokeWeight(6);


  pushMatrix();
  translate(width/2, height/2);
  rotate(PI/1.1);
  arc(130, -195, 110, 110, 0, PIE+QUARTER_PI, PIE);
  arc(-10, -238, 110, 110, 0, PIE+QUARTER_PI, PIE);
  popMatrix();
}

