class Bubble{
  float x;
  float y;
  float size1;
  
  Bubble(){
    x=width/2;
    y=height;
    size1=5;
  }
  void pop(){
  background(255);
}
  void ascend(){
    y=y-0.5;
  }
  void display(){
    stroke(0);
    fill(127);
    ellipse(x,y,size1,size1);
    size1=size1+0.1;
  }
  void top(){
    if(y==0){
      y=0.5;
      size1=size1-0.1;
    }
  }
}