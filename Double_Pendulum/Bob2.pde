class Bob2
{
  Bob1 a = new Bob1();
  
  float theta2;
  float angularVel2;
  float angularAcc2;
  float l;
  float g=0.5;
  
  PVector pos2 = new PVector(0,0);
  PVector joint2 = new PVector(a.pos1.x,a.pos1.y);
  Bob2(float temp,float len)
  {
    l=len;
    theta2=temp;
    pos2.x=joint2.x+l*sin(theta2);
    pos2.y=joint2.y+l*cos(theta2);
  }
  
  void move()
  {
    /*angularAcc=-1*(g/l)*sin(theta);
    angularVel+=angularAcc;
    theta+=angularVel;*/
  }
  
  void display()
  {
    joint2.x=a.pos1.x; //<>//
    joint2.y=a.pos1.y;
    
    pos2.x=joint2.x+l*sin(theta2);
    pos2.y=joint2.y+l*cos(theta2);   
    
    fill(100);
    ellipse(pos2.x,pos2.y,20,20);
    stroke(100);
    line(joint2.x,joint2.y,pos2.x,pos2.y);
  }
}
