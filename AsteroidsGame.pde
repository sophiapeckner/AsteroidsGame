//your variable declarations here
Star[] stars = new Star[50];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
//Asteroid[] asteroids = new Asteroid[3];
Spaceship glider = new Spaceship(); 

boolean keyDown = false;

public void setup() {
  //your code here
  size(400,400);
  for (int i = 0; i < stars.length; i++)      stars[i] = new Star();
  for (int i = 0; i < 3; i++) {
    asteroids.add(new Asteroid());
  }
}

public void draw() {
  //your code here
  background(#300403);  //#3a2731,#b52316
  for (int i = 0; i < stars.length; i++) stars[i].show();
  
  for (int i = 0; i < asteroids.size(); i++) {
    asteroids.get(i).move();
    asteroids.get(i).show();
      asteroids.get(i).drawCircleHue();
    float d = dist((float)glider.getX(),
                   (float)glider.getY(),
                   (float)asteroids.get(i).getX(),
                   (float)asteroids.get(i).getY() );
    if (d < 20)
      asteroids.remove(i);
  }
  
  if (keyPressed) {
    glider.openGlider();
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
      glider.myCenterX = (double) (Math.random() * 350);
      glider.myCenterY = (double) (Math.random() * 350);
      glider.myPointDirection = (double) (Math.random() * 180);
    }
  } else {
    glider.closeGlider();
    keyDown = false;
  }
  
  glider.show();
  glider.move();
}

void setGradient(int x, int y, float w, float h, color c1, color c2, int axis ) {
  noFill();

  if (axis == 1) {  // Top to bottom gradient
    for (int i = y; i <= y+h; i++) {
      float inter = map(i, y, y+h, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(x, i, x+w, i);
    }
  }  
  else if (axis == 2) {  // Left to right gradient
    for (int i = x; i <= x+w; i++) {
      float inter = map(i, x, x+w, 0, 1);
      color c = lerpColor(c1, c2, inter);
      stroke(c);
      line(i, y, i, y+h);
    }
  }
}
