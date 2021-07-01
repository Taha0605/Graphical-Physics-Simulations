void setup(){
  size(1000,1000);
  background(255,0,0);
}
void draw()
{
}
void mouseDragged(){
    stroke(0);
    line(pmouseX,pmouseY,mouseX,mouseY);
  }
  void keyPressed(){
    background(255,0,0);}