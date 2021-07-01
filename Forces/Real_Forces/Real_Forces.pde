Mover m = new Mover();
void setup()
{
  size(640,360);
}

void draw()
{
  background(255);
  PVector force = new PVector(1,3);
  if(mousePressed)
  m.applyForce(force);
  m.display();
  m.move();
  m.edges();
}
