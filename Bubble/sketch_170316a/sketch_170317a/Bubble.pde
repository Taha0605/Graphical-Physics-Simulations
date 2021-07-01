class Bubble{
  float x;
  float y;
  float diam;
  Bubble(float tempD){
    x=random(width);
    y=height;
    diam=tempD;
  }
  void display()
  {
    stroke(0);
    fill(0,0,255,50);
    ellipse(x,y,diam,diam);
  }
  void ascend()
  {
    y=y-(random(1,5));
    x=x+random(-0.9,0.9);
  }
  void top()
  {
    if((y+(diam/2))<=0)
    {
      y=height;
    }
  }
}
    