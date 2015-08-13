int num = 200;
Triangle [] myTriangles;

void setup(){
  size(800,400);
  
  myTriangles = new Triangle[num];
  
  for ( int i=0; i < num ; i++){
  myTriangles[i] = new Triangle();
  
  }

}

void draw(){
  background(255);
  for (int i =0;i<num;i++) {
    myTriangles[i].draw(); 
    myTriangles[i].go();
  }
}

