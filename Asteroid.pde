class Asteroid extends Floater{
  private double myRadius;
  
  public Asteroid() {
    myXspeed = (double) (Math.random() * 1) + 1;
    myYspeed = (double) (Math.random() * 1) + 1;
    myPointDirection = 0;
    myCenterX = (double) (Math.random() * 300);
    myCenterY = (double) (Math.random() * 300);
    myRadius = (double) (Math.random() * 10) + 20;
  }
  
  public void show() {
    fill(#e9700c);
    //noStroke();
    ellipse((float)myCenterX, (float)myCenterY, (float)myRadius, (float)myRadius);
    drawTail();
  }
  
  public void drawTail() {
    //stroke(#fded2b);
    for(int i = 185; i > 175; i--) {
      int g = (int)(Math.random()*199);
      stroke(199, g, 0);
      float angle=TWO_PI/150;
      line((float) myCenterX,
           (float) myCenterY,
           (float) ( ( ( (200-i) *myRadius)/3) * sin(angle*i) + myCenterX ),
           (float) ( ( ( (200-i)*myRadius)/3) * cos(angle*i) + myCenterY )
           );
    }
  } 
}
