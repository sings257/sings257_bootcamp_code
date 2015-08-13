int numElements = 100;

Box [] boxes;

void setup(){
  
  size (200, 600);
  boxes = new Box[numElements];
  
  for ( int i =0; i < numElements ; i ++){
    boxes[i] = new Box();
  
  }
}

void draw(){
  background (0);
  
  for (int i=0; i < numElements ; i++){
    
    boxes[i].drawBox();
    boxes[i].go();
  
  
  }


}
