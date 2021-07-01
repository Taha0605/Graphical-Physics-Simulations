float theta = PI/3;
float m = tan(theta);

  float x=0.0;
  float y=0.0;
  float ox=500.0;
  float oy=350.0;
  float sumx=0.0;
  float sumy=0.0;
  float prex=0.0;
  float prey=0.0;
  
void setup()
{
  size(1000,700);
  background(100);
}
void draw()
{
  background(130);
  stroke(0);
  while(sumy>=0)
  {
    y = m*x;
    y*=-1;
    sumx=(ox+x*50.0);
    sumy=(oy+y*50.0);
    if(x!=0.0)
    line(prex,prey,sumx,sumy);
    prex=sumx;
    prey=sumy;
    x+=1;
  }
  fill(255);
  ellipse(ox, oy, 10,10);
  oy++;
}
