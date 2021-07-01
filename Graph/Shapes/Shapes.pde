PShape rand;
void setup()
{
  size(640,360);
  rand = createShape();
  rand.beginShape();
  rand.stroke(0);
  rand.strokeWeight(3);
  rand.fill(255,0,0);
  rand.vertex(99,0);
  rand.vertex(0,99);
  rand.vertex(200,200);
  rand.vertex(10,60);
  rand.endShape();
}
float x=0;
float y=180;
void draw()
{
  background(255);
  
  shape(rand,x,y);
}
