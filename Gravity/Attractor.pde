class Attractor
{
  PVector attractor = new PVector(320,180); 
  void applyForce(PVector force)
  {
    Mover m = new Mover();
    PVector acc = force.div(m.mass);
    (m.acceleration).add(acc);
  }
  
  void display()
  {
    fill(0);
    ellipse(m.pos.x,m.pos.y,30,30);
    fill(0,0,255);
    ellipse(attractor.x,attractor.y,3,3);
  }
}
