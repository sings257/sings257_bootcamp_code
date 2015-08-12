
int[] x;

void setup() {
  size(500, 500);
  x = new int[height];
}

void draw() {
  background(0); 
  
  for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
  }
  x[0] = mouseX;
  
  for (int i = 1; i < x.length; i++) {
    stroke(255, 0, 255);
    
    line(x[i], i, x[i-1], i-1);
  }
  
   for (int i = x.length-1; i > 0; i--) {
    x[i] = x[i-1];
  }
  x[200] = mouseX;
  
  for (int i = 1; i < x.length; i++) {
    stroke(0, 0, 255);
    
    line(x[i], i, x[i-1], i-1);
  }
  
}
