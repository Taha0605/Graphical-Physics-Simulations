void setup(){
  size(640,360);
  background(100);
}
void draw()
{
  stroke(255,255,9);
  line(pmouseX,pmouseY,mouseX,mouseY);
}
void mousePressed()
{
  background(0);
}
void keyPressed()
{
  background(255,255,100);
}