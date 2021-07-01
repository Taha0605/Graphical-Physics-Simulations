void setup()
{
  size(640,360);
}
void draw()
{
  background(255,0,0);
  if(keyCode==UP)
  background(0,255,0);
  else if(keyCode==DOWN)
  background(0,0,255);
  else if(mousePressed)
  background(100,50,200);
}