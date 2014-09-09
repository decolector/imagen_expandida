int posx = 0;
int vel  = 5;

void setup(){
  size(800, 400);
  background(0);  
  noStroke();
}

void draw(){
  rect(posx, height/2, 10, 10);
  posx += vel;
}
