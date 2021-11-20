// note that this class does NOT extend Floater
class Star {
  //your code here
  int myX, myY, myColor, myStrokeWeight;
  //float myScale = 0.6;
  
  Star(int x, int num) {
    myX = (int)( Math.random()*15) + (x*(400/num) );
    myY = (int)( Math.random()*400 );
    myStrokeWeight = 1;
    myColor = color(255);
  }
  
  void show() {
    int firstShift = myStrokeWeight + 1;
    int secondShift = myStrokeWeight + 3;
    pushMatrix();
    pushStyle();
    strokeWeight(myStrokeWeight);
    //scale(myScale, myScale);
    stroke(myColor);
    beginShape();
    point(myX,myY);
    line(myX,myY-firstShift,myX,myY-secondShift);
    line(myX,myY+firstShift,myX,myY+secondShift);
    line(myX-firstShift,myY,myX-secondShift,myY);
    line(myX+firstShift,myY,myX+secondShift,myY);
    endShape();
    popStyle();
    popMatrix();
  } 
}
