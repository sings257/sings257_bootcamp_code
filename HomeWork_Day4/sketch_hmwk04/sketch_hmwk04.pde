float r = 40;
float theta = 0;

float rectY;


void setup(){
  
   size(500,500);
   background(0);
   frameRate(10);
   
  rectY= height/2;
  fill(164, 240, 134);
  rect(width/2, rectY, 10, 10);

}

void draw(){
   
  noStroke();
  fill(164, 240, 134);
  float x = r * cos(theta * 0.03);
  ellipse(x+width/2, theta, 40, 40);
  theta += 5;
  
  if (theta > rectY){
    fill(164, 240, 134);
    rect(width/2, 460 , 10, 10);
  
  }
  
}


