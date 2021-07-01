class Rods
{
  float x;
  float y;
  float h;
  float w = 30; 
  float xspeed = 2;
  
  int count;
  
  Rods(float tempx, float temph, float tempy)
  {
    x=tempx;
    h=temph;
    y=tempy;
  }
  Rods()
  {
    count = 0;
  }
  
  void displayRods()
  {
    rectMode(CENTER);
    fill(0,255,0);
    rect(x,y,w,h);
  }
 
  void move()
  {
    x-=xspeed;
  }
}
