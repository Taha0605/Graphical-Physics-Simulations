class Physics
{
  void display()
  {
    translate(width/2,height/2);
    PVector mouse = new PVector(mouseX,mouseY);
    PVector origin = new PVector(width/2,height/2);
    stroke(255);
    //ellipse(pos.x,pos.y,20.0,20.0);
    mouse.sub(origin);
    line(0,0,mouse.x,mouse.y);
  }
}
