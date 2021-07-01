void setup()
{
  size(600,400,P3D);
}
void draw()
{
  background(0);
  translate(mouseX,mouseY,-500);
  box(100);
  rotate(10);
}
