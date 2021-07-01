Ball ball;
int n = 205;
Plinks[] plink = new Plinks[n];
float damp = 0.5;

void setup()
{
  size(640,360);
  ball = new Ball(110,20.0);
  
  float x = 40;
  float y = 100;
  int cnt=0;
  for(int i=0;i<n;i++)
  {
    plink[i] = new Plinks(x,y);
    x+=30;
    if(x>=width)
    {
      y+=20;
      cnt++;
      if(cnt%2!=0)
      x = 25;
      else
      x=40;
    }
  }
  
}

void draw()
{
  background(0);

  for(int i=0;i<n;i++)
  {
    plink[i].display(); //<>//
    float dist=PVector.sub(ball.pos,plink[i].pos).mag();
    float sum = (ball.r + plink[i].r)/2;
    if(dist<=(sum))
    collide(ball, plink[i]);
    if(ball.pos.x>=640||ball.pos.x<=0)
    ball.velocity.x*=-damp;
  }
  
  ball.move();
  ball.display();
}

void collide(Ball ball, Plinks plink)
{
  PVector temp = PVector.sub(ball.pos, plink.pos);
  ball.velocity = temp.setMag((ball.velocity.mag())*damp);
}
