Bubble[] bubbles=new Bubble[100];
void setup()
{
  size(640,360);
  for (int i=0;i<bubbles.length;i++){
    bubbles[i]=new Bubble(random(5,60));
  }
}
void draw()
{
  background(255);
  for (int i=0;i<bubbles.length;i++)
  {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}
  