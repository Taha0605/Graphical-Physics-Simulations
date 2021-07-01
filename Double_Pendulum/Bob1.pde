class Bob1
{
  float theta1;
  float angularVel1;
  float angularAcc1;
  float l;
  float g=0.5;
  
  PVector joint1 = new PVector(320,0);
  PVector pos1 = new PVector(0,0);
  Bob1(float temp,float len)
  {
    l=len;
    theta1=temp;
    pos1.x=joint1.x+l*sin(theta1);
    pos1.y=l*cos(theta1);
  }
  
  Bob1()
  {
  }
  
  void move()
  {
    angularAcc1=-1*(g/l)*sin(theta1);
    angularVel1+=angularAcc1;
    theta1+=angularVel1;
  }
  
  void display()
  {
    pos1.x=joint1.x+l*sin(theta1);
    pos1.y=l*cos(theta1);   
    fill(0);
    ellipse(pos1.x,pos1.y,20,20);
    stroke(0);
    line(joint1.x,joint1.y,pos1.x,pos1.y);
  }
}
