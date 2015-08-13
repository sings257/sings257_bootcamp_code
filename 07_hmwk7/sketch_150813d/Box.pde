class Box {

  //Data
  int x;
  int y;

  int speed;

  Box() {


    x = int(random(width));
    y = int(random(height));

    speed = int(random(2, 8));
  }

  void drawBox() {

    noStroke();
    fill( random(255), random(255), 125, 250);
    rect(x, y, 20, 20);
  }

  void go() {

    y = y + speed;

    if ( y > height && speed > 0) {

      y = -10;
    }
    
    
  }
}

