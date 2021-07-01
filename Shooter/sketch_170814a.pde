//Try to make levels where the speed of the block increases or size decreases
Shooter shoot=new Shooter();
Target tar=new Target();
int n=0;
void setup()
{
  size(1000,500);
}
void draw()
{
  background(255);
  shoot.displays();
  tar.displayt();
  tar.movet();
  if(n==5)
  {
    shoot.displayb();
    shoot.moveb();
  }
  if(shoot.y<=0)
  {
    n=0;
    shoot.reset();
  }
  //target dimensions-50x50    bullet dimensions-20x20
  //left side collision check
  if(((shoot.y-tar.yt)<=60)||((tar.yt-shoot.y)<=10)&&(tar.xt-shoot.x)<=10)
  {
    tar.pop();
    nextLevel();
  }
  //down side collision check
  if(shoot.y-tar.yt<=60&&((tar.xt-shoot.x<=10)||(shoot.x-tar.xt<=60)))
  {
    tar.pop();
    nextLevel();
  }
  //right side collision check
  if(shoot.x-tar.xt<=60&&(tar.yt-shoot.y<=10||shoot.y-tar.yt<=60))
  {
    tar.pop();
    nextLevel();
  }
}
void mousePressed()
{
  n=5;
}