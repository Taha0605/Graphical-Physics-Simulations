class Bob
{
  float theta = 0;
  float mass = 20.0;
  float l;
  
  Bob(float templ)
  {
    l = templ;
  }
  
  PVector joint = new PVector(320,0);  
  PVector pos = new PVector(320,180);
  /*PVector velocity = new PVector(1,0);
  PVector acceleration = new PVector(0,0);*/
  float angularVel = 0;
  float angularAcc = 0;
  float gravity = 0.5;
  
  void initializePos(float initTheta)
  {
    theta = initTheta;
    pos.x = joint.x + l*sin(theta);
    pos.y = joint.y + l*cos(theta);
  }
  
  void display()
  {
    fill(0); //<>//
    ellipse(pos.x,pos.y,20.0,20);
    line(pos.x,pos.y,joint.x,joint.y);
  }
  
  void move()
  {
    /*pos.add(velocity); //<>//
    velocity.add(acceleration);
    acceleration.mult(0);*/
    theta += angularVel;
    angularVel += angularAcc;
    angularAcc = -(gravity/l)*sin(theta);
    /*if(pos.x<joint.x)
    angularAcc = (gravity/l)*sin(theta);
    if(pos.x>joint.x)
    angularAcc = -(gravity/l)*sin(theta);*/
    
    pos.x = joint.x + l*sin(theta);
    pos.y = joint.y + l*cos(theta);
    
    //theta = (float)Math.atan((double)((joint.x-pos.x)/(pos.y)));
  }

  /*void applyForce(PVector force)
  {
    PVector f = PVector.div(force,mass); //<>//
    acceleration.add(f);
  }*/
  
  /*void revolve()
  {
    pos.x = l * (float)cos(theta)+width/2;
    pos.y = l * (float)sin(theta)+height/2;
    theta+=0.1;
  }*/
}
