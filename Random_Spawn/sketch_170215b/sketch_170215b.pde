float px;
float py;
void setup(){
  size(640,360);
  background(0);
}
void draw(){
  stroke(255,0,0);
  fill(0,255,255);
  rect(px,py,25,25);
  fill(255,255,0);
  ellipse(px,py,8,8);
  fill(255,255,0);
  ellipse(px+25,py,8,8);
  fill(255,255,0);
  ellipse(px,py+25,8,8);
  fill(255,255,0);
  ellipse(px+25,py+25,8,8);
  px=random(0,640);//randomly chooses a number from maximum to minimum
  py=random(360);//randomly chooses a number till 100
}