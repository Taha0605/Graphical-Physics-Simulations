class Ball
{
  PVector pos;
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0.1);
  float r = 10;
  
  Ball(float x, float y)
  {
    pos = new PVector(x,y);
  }
  
  void move()
  {
    velocity.add(acceleration);
    pos.add(velocity);
  }
  
  void display()
  {
    fill(255,255,0);
    ellipse(pos.x,pos.y,r,r);
  }
}
