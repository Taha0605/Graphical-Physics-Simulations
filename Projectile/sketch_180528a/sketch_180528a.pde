/*double x1=200.0;
double y=540.0;
double u=10;
double angle=60;
double g=-10.0;
double x=0.0;*/
PVector pos = new PVector(0,700);
PVector velocity = new PVector(5,-30);
PVector acceleration = new PVector(0,1);
void setup(){
  size(1000,700);
  background(100);
}
void draw()
{
  background(255);
  /*y=x*Math.tan(angle)-((g*x*x)/(2*u*u*Math.cos(angle)*Math.cos(angle)));
  fill(0);
  ellipse((float)x,(float)y,25,25);
  x=x+1;*/
  velocity.add(acceleration);
  pos.add(velocity);
  fill(0);
  ellipse(pos.x,pos.y,30,30);
}
