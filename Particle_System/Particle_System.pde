ArrayList<Particle> particles = new ArrayList<Particle>();
void setup()
{
  size(640,360);
}

void draw()
{
  background(255);
  
  for(int i=1;i<=3;i++)
    particles.add(new Particle(random(-3,3),random(-3,3)));
  
  for(int i=0;i<particles.size();i++)
  {
    Particle temp = particles.get(i);
    temp.move();
    temp.show();
    if(temp.pos.y>=360){
    particles.remove(i);
    i--;}
  }
}
