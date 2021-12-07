class Asteroid extends Floater{
  private int scale;
  
  public Asteroid() {
    scale = 8;
    corners = 12;
    xCorners = new int[corners];
    yCorners = new int[corners];    
    xCorners[0] = scale * 2;
    yCorners[0] = scale * -2;
    xCorners[1] = scale * 0;
    yCorners[1] = scale * 0;
    xCorners[2] = scale * -1;
    yCorners[2] = scale * -2;
    xCorners[3] = scale * 0;
    yCorners[3] = scale * 0;
    xCorners[4] = scale * -2;
    yCorners[4] = scale * -1;
    xCorners[5] = scale * 0;
    yCorners[5] = scale * 0;
    xCorners[6] = scale * -2;
    yCorners[6] = scale * 2;
    xCorners[7] = scale * 0;
    yCorners[7] = scale * 0;
    xCorners[8] = scale * 1;
    yCorners[8] = scale * 2;
    xCorners[9] = scale * 0;
    yCorners[9] = scale * 0;
    xCorners[10] = scale * 2;
    yCorners[10] = scale * 1;
    xCorners[11] = scale * 0;
    yCorners[11] = scale * 0;
    myXspeed = (double) (Math.random() * 1) + 1;
    myYspeed = (double) (Math.random() * 1) + 1;
    myPointDirection = 0;
    myCenterX = (double) (Math.random() * 300);
    myCenterY = (double) (Math.random() * 300);
    myColor = color(#ded6d0);
  }
  
  public void drawCircleHue() {
    for (int i = 0; i < (scale*3); i++) {
      noFill();
      int b = 255 - (i*2);
      float a = 255 - (i*8);
      stroke(255, 255, b, a);
      ellipse((float)myCenterX, (float)myCenterY, i, i);
    }
  }
  
  public void thrust() {
    
  }
  
  public double getX() {
    return myCenterX;
  }
   
  public double getY() {
    return myCenterY;
  }
}
