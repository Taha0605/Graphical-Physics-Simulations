PVector pos = new PVector(300,200);
PVector velocity = new PVector(0,0);
PVector acceleration = new PVector(0,0);
PVector gravity = new PVector(0,1.0);
PVector wind = new PVector(1.0,0);

void setup()
{
  size(600,400);
  
}
void draw()
{
  background(255);
  
  display();
  move();
  applyForce(gravity);
  //applyForce(wind);
  update();
  
}

void display()
{
  fill(0);
  ellipse(pos.x,pos.y,20.0,20.0);
}

void move()
{
  pos.add(velocity);
  velocity.add(acceleration);
  acceleration.mult(0);
}

void update()
{
  if(pos.x>width||pos.x<0)
  velocity.x*=-1;
  if(pos.y>height||pos.y<0)
  velocity.y*=-1;
}

void applyForce(PVector force)
{
  acceleration.add(force);
}
