Player p = new Player();
Rods rods[] = new Rods[100];
Rods topRods[] = new Rods[100];
Rods ob = new Rods();
float h;
float toph;
void setup()
{
  size(640,360);
  float prex = (width/2);
  for(int i=0;i<rods.length;i++)
  {
    h=random(275,500);
    rods[i] = new Rods(prex,h,height);
    toph = height-15-(h/2);
    topRods[i] = new Rods(prex,toph,0);
    prex+=random((width/2-100),width/2);
  }
}
void draw()
{
  background(90,90,255);
  
  for(int i=0;i<rods.length;i++)
  {
    rods[i].move();
    rods[i].displayRods();
    
    topRods[i].move();
    topRods[i].displayRods();
    if(rods[ob.count].x<50)
    ob.count++;
  }
  
  /*rods[ob.count].collisionCheck();
  topRods[ob.count].collisionCheck();*/

  
  p.move();
  PVector gravity = new PVector(0,5);
  p.applyForce(gravity);
  if(mousePressed)
  p.playerJump();
  p.display();
}
