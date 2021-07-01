Mover[] movers = new Mover[20];
float c=-0.01;
void setup() {
  size(640, 360);
  for (int i = 0; i < movers.length; i++) {
    movers[i] = new Mover(random(1, 4), random(width), random(height/2));
  }
}

void draw() {
  background(255);

  for (int i = 0; i < movers.length; i++) {

    PVector wind = new PVector(0.1, 0);
    PVector gravity = new PVector(0, 0.1*movers[i].mass);
    
    PVector friction = movers[i].velocity.get();
    friction.normalize();
    friction.mult(/*(6*3.14*movers[i].velocity.mag()*movers[i].mass*16*c)*/c);//or use the fluid drag equation 
    
    
    movers[i].applyForce(friction);
    if(mousePressed)
    movers[i].applyForce(wind);
    movers[i].applyForce(gravity);

    movers[i].update();
    movers[i].display();
    movers[i].checkEdges();
  }
}
