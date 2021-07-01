float l = 200;
Bob bob = new Bob(l);
float angle;
void setup()
{
  size(640,360);
  bob.initializePos(PI/4);
}
void draw()
{
  background(255); //<>//
  PVector gravity = new PVector(0,1);
  
  /*PVector tension = PVector.sub(bob.joint,bob.pos);
  tension.normalize();
  PVector force = new PVector(0,0);
  force.x = tension.y;
  force.y = tension.x;
  tension.mult(bob.mass*gravity.mag()*cos(bob.theta));
  force.mult(gravity.mag()*sin(bob.theta));
  bob.applyForce(force);*/
  bob.move();
  
  bob.display();
}
