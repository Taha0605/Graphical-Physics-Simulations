class Particle
{
  PVector pos = new PVector(360,40);
  PVector velocity;
  PVector acceleration = new PVector(0,0.1);
  
  Particle(float vx, float vy)
  {
    velocity = new PVector(vx,vy);
  }
  
  void show()
  {
    fill(255, 102, 0,(360-pos.y));
    stroke(255, 102, 0,(360-pos.y));
    ellipse(pos.x,pos.y,10,10);
  }
  
  void move()
  {
    velocity.add(acceleration);
    pos.add(velocity);
  }
}
