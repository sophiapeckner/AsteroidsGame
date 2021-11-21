// note that this class does NOT extend Floater
class Star {
  //your code here
  int myX, myY, myColor;
  double mySize;
  //float myScale = 0.6;
  
  Star() {
    myX = (int)(Math.random()*400);
    myY = (int)(Math.random()*400);
    mySize = (Math.random()) + 0.1;
    myColor = color(#bbaab2);
  }
  
  void show() {
    ellipse(myX, myY, (float)mySize, (float)mySize);
  } 
}
