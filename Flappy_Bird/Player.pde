class Player
{
  PVector pos = new PVector(50,180);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  float mass = 20.0;
  void display()
  {
    fill(255,255,0);
    ellipse(pos.x,pos.y,20.0,20);
  }
  
  void move()
  {
    pos.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }

  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass);
    acceleration.add(f);
  }
  
  void playerJump()
  {
    velocity.y=0;
    velocity.y-=4;
  }
}
