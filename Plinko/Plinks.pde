class Plinks
{
  PVector pos;
  float r = 9;
  Plinks(float x, float y)
  {
    pos = new PVector(x,y);
  }
  
  void display()
  {
    fill(0,255,0);
    ellipse(pos.x,pos.y,r,r);
  }
}
