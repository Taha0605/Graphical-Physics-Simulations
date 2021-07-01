class Mover
{
  float mass = 20;
  Attractor a = new Attractor();
  PVector pos = new PVector(20,30);
  PVector velocity = new PVector(0,0);
  PVector acceleration = new PVector(0,0);

  void move()
  {
    pos.add(velocity);
    velocity.add(acceleration);
    acceleration.mult(0);
  }
}
