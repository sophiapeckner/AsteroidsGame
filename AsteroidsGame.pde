//your variable declarations here
Star[] stars = new Star[50];
Spaceship glider = new Spaceship(); 
boolean keyDown = false;

public void setup() {
  //your code here
  size(500,500);
  for (int i = 0; i < stars.length; i++) stars[i] = new Star();
}

public void draw() {
  //your code here
  background(#3a2731);
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
    else if (key == ' ' && keyDown == false) {
      keyDown = true;
      glider.myCenterX = (double) (Math.random() * 450);
      glider.myCenterY = (double) (Math.random() * 450);
      glider.myPointDirection = (double) (Math.random() * 180);
    }
  } else {
    keyDown = false;
  }
  
  glider.show();
  glider.move();
}
