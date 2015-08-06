//Global Variables
PImage img;
PImage img2;


void setup(){
  size(500,500);
  img = loadImage("bruce.jpg");
  img2 = loadImage("caitlyn.jpg");
  background(img2);

}

void draw(){
  image(img,0,0);
  image(img2, 0, 0);
}

void mousePressed(){
 for(int i=255; i>0; i--){
  tint(255,i);
  image(img2,0,0);
  }
  
    
}
    
    
   
    
   
  
 
  
  


