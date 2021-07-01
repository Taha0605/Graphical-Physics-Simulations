int num=100;
Bubble[] bubbles=new Bubble[num];
int total=0;
void setup()
{
  size(640,360);
  for (int i=0;i<bubbles.length;i++){
    bubbles[i]=new Bubble(random(5,60));
  }
}
void mousePressed(){
  total++;
  if(total>num)
  {
    total=0;
  }
}
void keyPressed(){
  total--;
  if (total<0)
  {
    total=0;
  }
}
void draw()
{
  background(255);
  for (int i=0;i<total;i++)
  {
    bubbles[i].display();
    bubbles[i].ascend();
    bubbles[i].top();
  }
}
  