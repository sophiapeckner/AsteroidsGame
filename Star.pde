// note that this class does NOT extend Floater
class Star {
  //your code here
  private int myX, myY;
  private float myW, myH;
  //float myScale = 0.6;
  
  public Star() {
    myX = (int)(Math.random()*width);
    myY = (int)(Math.random()*width);
    myW = (float)(Math.random()) + 1;
    myH = (float)(Math.random()) + 1.5;
  }
  
  public void show() {
    fill(#936d40);
    stroke(#936d40);
    ellipse(myX, myY, myW, myH);
  }
}
