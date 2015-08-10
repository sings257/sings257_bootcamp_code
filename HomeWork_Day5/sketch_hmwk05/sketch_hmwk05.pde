
PImage icon;
int gridSize= 120;

void setup(){
  size(700,700);
  
    icon = loadImage("1.png");
    background(191, 255, 255);


}

void draw(){
  
  for(int x = 60; x < width - gridSize; x+=gridSize){
   for(int y = 60; y < height - gridSize; y+=gridSize){
      
      image(icon, x-1, y-1, 50, 99);
 
    
    }
   }
}
