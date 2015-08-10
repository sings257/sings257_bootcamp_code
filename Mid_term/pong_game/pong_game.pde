//Global Variables

PImage img;
boolean pongOn;

float x = 300;
float y = 300;
float speedX = random(2,6);
float speedY = random(2,6);
int topBarColor = #9FEDFF;
int bottomBarColor = #663300;
int rectSize = 160;

void setup(){
  size(600,600);
  img = loadImage("sky.png");
  
  smooth();
  ellipseMode(CENTER);
  
}

void draw(){
  
  background(img);
  
  noStroke();
  fill(255, 204, 0);
  ellipse(x, y, 25, 25);
  
  fill(topBarColor);
  rect(0,0, width, 20 ); 
  noStroke();
  fill(bottomBarColor);
  rect(mouseX-rectSize/2, height-80, rectSize, 20, 40);
  
  if(pongOn){
    
    x = x + speedX;
    y = y + speedY;
    
      if ( x > mouseX-rectSize/2 && x < mouseX+rectSize/2 && y > height-80 && y < height-60){
      speedY = speedY * -1;
      y = y + speedY;
      bottomBarColor = 0;
      fill(random(0,100), random(0, 100), random(0,100));
      ellipse(x, y, 20, 20);
      
    
    }  else if (y < 40){
      speedY = speedY * -1.1;
      y = y + speedY;
      
      }  else{
          topBarColor = #9FEDFF;
          bottomBarColor = #663300;
           
        }
     if( y > height){
       pongOn = false;
       x = 300;
       y = 300;
       speedX = random(2, 6);
       speedY = random(2, 6);
       rectSize = 160; 
     }
     
     if( x > width || x < 0){
       speedX = speedX * -1;  
       x = x + speedY ;
     }  
  }
}

void mousePressed(){
  pongOn = !pongOn;
}

