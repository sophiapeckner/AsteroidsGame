class Spaceship extends Floater {   
  //your code here
  public Spaceship() {
    scale = 4;
    corners = 14;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = scale * -7;
    yCorners[0] = scale * 0;
    xCorners[1] = scale * -5;
    yCorners[1] = scale * 0;
    xCorners[2] = scale * -6;
    yCorners[2] = scale * 2;
    xCorners[3] = scale * -3;
    yCorners[3] = scale * 0;
    xCorners[4] = scale * 0;
    yCorners[4] = scale * 0;
    xCorners[5] = scale * 6;
    yCorners[5] = scale * 4;
    xCorners[6] = scale * 6;
    yCorners[6] = scale * 0;
    xCorners[7] = scale * 8;
    yCorners[7] = scale * 0;
    xCorners[8] = scale * 6;
    yCorners[8] = scale * 0;
    xCorners[9] = scale * 6;
    yCorners[9] = scale * -4;
    xCorners[10] = scale * 0;
    yCorners[10] = scale * 0;
    xCorners[11] = scale * -3;
    yCorners[11] = scale * 0;
    xCorners[12] = scale * -6;
    yCorners[12] = scale * -2;
    xCorners[13] = scale * -5;
    yCorners[13] = scale * 0;
    myColor = 255;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0;
    myCenterX = 100;
    myCenterY = 100;
  } 
  
  public double getX() {
    return myCenterX;
  }
   
  public double getY() {
    return myCenterY;
  }
  
}
