float radius=50.0;
//float mass=30.0;
PVector acceleration=new PVector(0,0);
PVector velocity=new PVector(0,1);
PVector centre=new PVector(300,200);
PVector pos=new PVector(300,200+radius);
void setup()
{
  size(600,400);
}
void draw()
{
  background(255);
  display();
  move();
}
void display()
{
  fill(0);
  ellipse(pos.x,pos.y,10,10);
  ellipse(300,200,1.0,1.0);
}

void move()
{
  acceleration=(centre.sub(pos)).normalize();
  acceleration.mult((velocity.mag()*velocity.mag())/radius);
  pos=pos.add(velocity);
  velocity=velocity.add(acceleration);
}
