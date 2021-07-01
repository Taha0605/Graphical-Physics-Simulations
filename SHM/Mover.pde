class Mover
{
  PVector centre = new PVector(320,180);
  PVector pos = new PVector(390,180);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);
  PVector restoreForce = new PVector(1,0);
  float mass = 1;
  float k = 0.01;
  void display()
  {
    fill(0);
    ellipse(pos.x,pos.y,20,20);
    line(centre.x,centre.y,pos.x,pos.y);
    
  }
  void move()
  { //<>//
    velocity.add(acceleration);
    pos.add(velocity);
    acceleration.mult(0);
  }
  void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass); 
    acceleration.add(f);
  }
  PVector attract(Mover m)
  {
    PVector force = PVector.sub(pos,centre);
    float distance = force.mag();
    distance = constrain(distance,0,70);
    force.normalize();
    force.mult(-1);
    force.mult(k*distance);
    return force;
  }
}
