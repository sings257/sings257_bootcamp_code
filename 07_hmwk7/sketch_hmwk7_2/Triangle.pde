class Triangle {
  
  int x; 
  int y; 
  int speed; 
 
  //constructor
   Triangle () {

    speed = int(random(1, 10)); 
   
    x = int(random(width));
    y = int(random(height));
  }
 
  
  void draw() {
    
    noStroke();
    fill(0);
    triangle(x, y, 100, 20, 86, 75);
  }
 
 
  void go() {

    x+= speed;
    
    if (x>width && speed>0) {
      x = -20;
    }
  }
}
