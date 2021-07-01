void setup()
{
  size(1000,400);  
}
int cnt=0;

float linex=40;
float liney=200;

float x1=linex+50;
float x2=500;

float v1=0;
float v2=-3;

float m1=1;
float m2=100;

float r2=(log(100)/log(10))*25;
float r1=30;

void draw()
{
  background(255);
  if(wallCollide())
  {
    v1*=-1;
    cnt++;
  }
  if(collide())
  {
    change();
    cnt++;
  }
  x1=x1+v1;
  x2=x2+v2;
  display();
  System.out.println(cnt);
}

void display()
{
  line(linex,50,linex,350);
  line(linex,liney,985,liney);
  fill(0);
  rect(x1,(liney-r1),r1,r1);
  fill(100);
  rect(x2,(liney-r2),r2,r2);
}

boolean collide()
{
  float distance=x2-x1;
  if(distance<=r1)
  {
    return true;
  }
  else
  return false;
}

void change()
{
  float first=(2*m2/(m1+m2))*v2;
  float second=((m1-m2)/(m1+m2))*v1;
  float temp=v1;
  v1=first+second;
  first=(2*m1/(m1+m2))*temp;
  second=((m2-m1)/(m1+m2))*v2;
  v2=first+second;
}

boolean wallCollide()
{
  if(x1<=linex)
  return true;
  else
  return false;
}
