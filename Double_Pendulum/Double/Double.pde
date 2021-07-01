float x1,y1;
float x2,y2;
float a1 = PI/2;
float a2 = 0;
float r1 = 100;
float r2 = 70;
float m1=50;
float m2=30;
float jointx = 320;
float jointy= 50;

void setup()
{
  size(640,360);
}

void draw()
{
  background(255);
  
  x1=jointx+r1*sin(a1);
  y1=jointy+r1*cos(a1);
  
  x2=x1+r2*sin(a2);
  y2=y1+r2*cos(a2);
  
  fill(0);
  ellipse(x1,y1,20,20);
  ellipse(x2,y2,20,20);
  line(x1,y1,jointx,jointy);
  line(x2,y2,x1,y1);
  a1+=0.01;
  a2+=0.01;
}
