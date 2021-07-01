void setup()
{
  size(640,360);
}

float x1=640.0/8;
float v1=1;
float x2=7*640.0/8;
float v2=-2;
float m1=1;
float m2=1000;
int cnt=0;
float r2=(log(m2)/log(10))*25;
float r1=30;

void draw()
{
  background(255);
  if(collide())
  {
    change();
  }
  
  x1=x1+v1;
  x2=x2+v2;
  
  display();
}

void display()
{
  
  fill(0);
  rect(x1,height/2,r1,r1);
  fill(100);
  rect(x2,height/2,r2,r2);
}

boolean collide()
{
  float distance=x2-x1;
  if(distance<=r1) //<>//
  {
    return true;
  }
  else
  return false;
}

void change()
{
  float first=(2*m2/(m1+m2))*v2; //<>//
  float second=((m1-m2)/(m1+m2))*v1;
  float temp=v1;
  v1=first+second;
  first=(2*m1/(m1+m2))*temp;
  second=((m2-m1)/(m1+m2))*v2;
  v2=first+second;
}
