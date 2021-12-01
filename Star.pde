// note that this class does NOT extend Floater
class Star {
  //your code here
  private int myX, myY, myColor;
  private double mySize;
  //float myScale = 0.6;
  
  public Star() {
    myX = (int)(Math.random()*500);
    myY = (int)(Math.random()*500);
    mySize = (Math.random()) + 0.1;
    myColor = color(#bbaab2);
  }
  
  public void show() {
    fill(myColor);
    ellipse(myX, myY, (float)mySize, (float)mySize);
  } 
}
