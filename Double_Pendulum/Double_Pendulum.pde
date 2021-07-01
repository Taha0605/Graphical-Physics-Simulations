Bob1 bob1;
Bob2 bob2;

void setup()
{
  size(640,360);
  bob1=new Bob1(PI/4,100);
  bob2=new Bob2(PI/4,50);
}

void draw()
{
  background(255);
  bob1.move();
  bob1.display();

  bob2.move();
  bob2.display();
  
}
