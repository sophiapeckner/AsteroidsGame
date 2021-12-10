//your variable declarations here
Star[] stars = new Star[50];
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
Spaceship[] gliders = new Spaceship[3]; 

boolean keyDown = false;

public void setup() {
  //your code here
  size(400,400);
  for (int i = 0; i < stars.length; i++)      stars[i] = new Star();
  for (int i = 0; i < gliders.length; i++){ 
    gliders[i] = new Spaceship();
    gliders[i].setX(100);
    gliders[i].setY(30*i + 20);
  }
  for (int i = 0; i < 3; i++)                 asteroids.add(new Asteroid());
}

public void draw() {
  //your code here
  background(40); // #300403,#3a2731,#b52316
  for (int i = 0; i < stars.length; i++) stars[i].show();
  drawMountains();
  for (int i = 0; i < asteroids.size(); i++) {
    
    asteroids.get(i).move();
    asteroids.get(i).show();
    asteroids.get(i).drawCircleHue();
    for (int j = 0; j < gliders.length; j++){
      float d = dist((float)gliders[j].getX(),
                     (float)gliders[j].getY(),
                     (float)asteroids.get(i).getX(),
                     (float)asteroids.get(i).getY() );
      if (d < 20)
        asteroids.remove(i);
    }
  }
  
  if (keyPressed) {
    allGliders("open");
    if (keyCode == UP)            // accelerate
      allGliders("fast");
    else if (keyCode == DOWN)    // decelerate
      allGliders("slow");
    else if (keyCode == RIGHT)  // rotate right
      allGliders("turnR");
    else if (keyCode == LEFT)
      allGliders("turnL");
    //else if (key == ' ' && keyDown == false) {
    //  keyDown = true;
    //  glider.myCenterX = (double) (Math.random() * 350);
    //  glider.myCenterY = (double) (Math.random() * 350);
    //  glider.myPointDirection = (double) (Math.random() * 180);
    //}
  } else {
    allGliders("close");
    keyDown = false;
  }
  
  allGliders("show");
  allGliders("move");
}

// https://openprocessing.org/sketch/179344/
public void drawMountains() {
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

public void allGliders(String type) {
  for (int i = 0; i < gliders.length; i++) {
    if (type == "show") gliders[i].show();
    else if (type == "move") gliders[i].move();
    else if (type == "close") gliders[i].closeGlider();
    else if (type == "open") gliders[i].openGlider();
    else if (type == "fast") gliders[i].accelerate(0.05);
    else if (type == "slow") gliders[i].accelerate(-0.05);
    else if (type == "turnR") gliders[i].turn(5);
    else if (type == "turnL") gliders[i].turn(-5);
    else if (type == "hyperSpace") {
      
    }
    //else if (type == "collision") {
    //  d = dist((float)gliders[i].getX(),
    //               (float)gliders[i].getY(),
    //               (float)asteroids.get(i).getX(),
    //               (float)asteroids.get(i).getY() );
    //}
  }
}
    
