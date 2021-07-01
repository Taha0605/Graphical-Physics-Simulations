void setup()
{
  size(640,360);
  background(100);
}
void draw()
{
  stroke(0,255,0);
  line(pmouseX,pmouseY,mouseX,mouseY);
}