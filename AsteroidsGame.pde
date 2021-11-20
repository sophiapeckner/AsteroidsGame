//your variable declarations here
Star[] stars = new Star[50];
Spaceship glider = new Spaceship(); 

public void setup() {
  //your code here
  size(400,400);
  for (int i = 0; i < stars.length; i++) stars[i] = new Star(i, stars.length);
}

public void draw() {
  //your code here
  background(#000080);
  for (int i = 0; i < stars.length; i++) stars[i].show();
  
  if (keyPressed) {
    if (keyCode == UP)            // accelerate
      glider.accelerate(0.05);
    else if (keyCode == DOWN)    // decelerate
      glider.accelerate(-0.05);
    else if (keyCode == RIGHT)  // rotate right
      glider.turn(5);
    else if (keyCode == LEFT)
      glider.turn(-5);
  }
  glider.show();
  glider.move();
}
