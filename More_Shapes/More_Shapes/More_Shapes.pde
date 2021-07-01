PShape s;

void setup()
{
  size(640,360);
  s = loadShape("hospital.svg");
}

void draw()
{
  background(255);
  shape(s,0,0);
}
