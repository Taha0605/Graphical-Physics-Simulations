public class Shooter
{
  float y=460;
  float xspeed1=4;
  float x;
  Shooter()
  {
  }
  void displays()
  {
    fill(0,255,0);
    rect(mouseX,470,80,30);
  }
  void displayb()
  {
    x=mouseX;
    fill(0,0,255);
    ellipse(mouseX+40,y,20,20);
  }
  void moveb()
  {
    y=y-20;
    /*if(y<=0)
    {
      y=460;
    }*/
  }
  void reset()
  {
    if(y<=0)
    {
      y=460;
    }
  }
}