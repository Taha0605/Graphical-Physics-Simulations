class Mover
{
  PVector pos = new PVector(width/2,height/2);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float mass = 30;
  void display()
  {
    fill(0);
    ellipse(pos.x,pos.y,30.0,30.0);
  }
  
  void applyForce(PVector f)
  {
    f = PVector.div(f,mass);
    acceleration.add(f);
  }
  
  void move()
  {
    pos.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
  
  void edges()
  {
    if(pos.x>640)
    velocity.x*=-0.9;
    if(pos.x<0)
    velocity.x*=-0.9;
    
    if(pos.y>180)
    velocity.y*=-0.9;
    if(pos.x<0)
    velocity.y*=-0.9;
  }
}
