PVector pos = new PVector(0,0);
PVector velocity = new PVector(0.1,0.1);
PVector acceleration=new PVector();
void setup()
{
  size(1000,700);
}

void draw()
{
  background(255);
  display();
  move();
}
void display()
{
  fill(0,0,255);
  ellipse(pos.x,pos.y,1.0,1.0);
  
  fill(255,255,0);
  ellipse(mouseX,mouseY,30.0,30.0);
}
void move()
{
  PVector mouse=new PVector(mouseX,mouseY);
  acceleration=(mouse.sub(pos)).normalize();
  acceleration.mult(0.1);
  pos.add(velocity);
  velocity.add(acceleration);
  
  //line(width/2,height/2,acceleration.x,acceleration.y);
  /*velocity.x+=0.5;
  velocity.y+=0.1;*/
  
  if(pos.x>=width||pos.x<=0)
  velocity.x*=-1;
  if(pos.y>=height||pos.y<=0)
  velocity.y*=-1;
}
