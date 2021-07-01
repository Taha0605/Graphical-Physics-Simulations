Mover m = new Mover();
Attractor a = new Attractor();

PVector gravity = new PVector();
void setup()
{
  size(640,360);
}
void draw()
{
   background(255);
   a.display();  
   m.move();
   
   gravity = PVector.sub(m.pos,a.attractor);
   gravity.normalize();
   float distance = (m.pos.sub(a.attractor)).magSq();
   distance = constrain(distance,5.0,25.0); 
   gravity.mult(1);
   a.applyForce(gravity);
   
}
