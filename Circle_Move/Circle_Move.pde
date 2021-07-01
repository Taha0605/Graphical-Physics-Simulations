int circleX;
float circleY;
void setup(){
  size(640,360);
}
void draw(){
  background(255);
  fill(0);
  ellipse(circleX,circleY,50,50);
  circleX++;
  circleY+=1.0/2.0;
}