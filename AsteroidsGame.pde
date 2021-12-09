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
  //background(#300403);  //#3a2731,#b52316
  drawMountains();
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

// https://openprocessing.org/sketch/179344/
public void drawMountains() {
  background(40);
  for(int i = 0; i <= 10; i++){
    float y = i*30;
    fill(0, map(i, 0, 5, 140, 20), map(i, 0, 5, 245, 140));
    stroke(0, map(i, 0, 5, 150, 20), map(i, 0, 5, 255, 150));
    beginShape();
    vertex(0, 200+y);
    for(int q = 0; q <= width; q+=10){
      float y2 = 200+y-abs(sin(radians(q)+i))*cos(radians(i+q/2))*map(i, 0, 5, 100, 20);
      vertex(q, y2);
    }
    vertex(width, height);
    vertex(0, height);
    endShape(CLOSE);
  }
}
