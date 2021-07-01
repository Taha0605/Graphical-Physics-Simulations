void setup()
{
  size(640,360);
}
PVector restoreForce = new PVector(0,0);
float k = 0.1;
Mover m = new Mover();
void draw()
{
  background(255);
  m.display();
  
  m.move();
  PVector restoreForce = m.attract(m);
  m.applyForce(restoreForce);
  
}
