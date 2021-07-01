float theta = 0;
float r = 58;

float x;
float y;
void setup()
{
  size(640,360);
}

void draw()
{
  background(255);
  revolve();
  display();
  theta+=1;
}

void revolve()
{
  x = r * (float)Math.cos(theta);
  y = r * (float)Math.sin(theta);
}
void display()
{
  stroke(0);
  line(width/2,height/2,x+width/2,y+height/2);
}
