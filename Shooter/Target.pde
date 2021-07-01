class Target
{
  float xspeed2=10;
  float yt=50;
  float xt=0;
  Target()
  {
  }
  void displayt()
  {
    fill(255,0,0);
    rect(xt,yt,50,50);
    //rect(xt+50,50,50,50);
  }
  void movet()
  {
    xt=xt+xspeed2;
    if(xt<=0||xt>=950)
    {
      yt+=50;
      xspeed2=xspeed2*(-1);
      //xspeed2+=2;
      if(xt<=0)
      {
        xspeed2+=1.5;
      }
      else if(xt>=950)
      {
        xspeed2-=1.5;
      }
    }
  }
}