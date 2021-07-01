PImage img;
float x=0;
float y=0;
void setup(){
  size(1000,560);
  img=loadImage("alien.png");
}
void draw()
{
  background(100,100,100);
  image(img,0,0);
}
  