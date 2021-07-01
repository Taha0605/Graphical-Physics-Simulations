float angle=0.0;
float aVelocity=0.0;
float aAcceleration=0.001;

void setup()
{
  size(640,360);
}
void draw()
{
  background(255);
  aAcceleration=map(mouseX,0,width,-0.001,0.001);
  angle += aVelocity;
  aVelocity += aAcceleration;
  rectMode(CENTER);
  fill(0);
  translate(width/2,height/2);
  rotate(angle);
  rect(0,0,30.0,30.0);
}
