void setup(){
  size(1000,700);
  background(100);
}
void draw()
{
  background(255);
  stroke(0);
  strokeWeight(2);
  line(0,350,1000,350);
  line(500,0,500,700);
  float x=0.0;
  float y=0.0;
  float ox=500.0;
  float oy=350.0;
  float sumx=0.0;
  float sumy=0.0;
  float prex=0.0;
  float prey=0.0;
  for(x=0.0;x<=100.0;x+=0.05)
  {
    y=sin(PI*x-frameCount/3.5)+sin(2*PI*x+frameCount/3.5);
    y*=-1;
    sumx=(ox+x*50.0);
    sumy=(oy+y*50.0);
    point(sumx,sumy);
    if(x!=0.0)
    line(prex,prey,sumx,sumy);
    prex=sumx;
    prey=sumy;
    //line(600,350,x,y);

  }
  for(x=0.0;x>=-100.0;x-=0.05)
  {
    y=sin(PI*x-frameCount/3.5)+sin(2*PI*x+frameCount/3.5);
    y*=-1;
    sumx=(ox+x*50.0);
    sumy=(oy+y*50.0);
    point(sumx,sumy);
    if(x!=0.0)
    {
      strokeWeight(2);
      line(prex,prey,sumx,sumy);
    }
    prex=sumx;
    prey=sumy;
    //line(400,350,x,y);

  }
}
