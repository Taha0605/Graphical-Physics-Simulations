//PShape s;
PVector ballPos = new PVector(500,180);
PVector center = new PVector(320,180);
PVector ballRelative;
PVector pointRelative;
void setup()
{
  size(640,360);
  /*s = createShape();
  s.beginShape();
  s.stroke(0);
  s.vertex(100,100);
  s.vertex(100,150);
  s.vertex(130,125);
  s.endShape(CLOSE);*/
}

void draw()
{
  background(255);
  displayBall();

  displayObstacle();

  ballPos.x=mouseX;
  ballPos.y=mouseY;
  
  relativeCalc();
  
  rayTracing();
}

void displayBall()
{
  fill(255,0,0);
  ellipse(ballPos.x,ballPos.y,10,10);
}

void rayTracing()
{
  stroke(255,0,0);
  line(ballPos.x,ballPos.y,320,100);
  line(ballPos.x,ballPos.y,320,260);
  //Printing the next rays deviating by 0.000000.....1 radians
  
  
}

void displayObstacle()
{
    
  stroke(0,0,0);
  line(320,100,320,260);
}

void relativeCalc()
{
  ballRelative = PVector.sub(
}
