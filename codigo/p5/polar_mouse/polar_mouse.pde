

float lineas = 36;
float radio;
float angulo = TWO_PI/lineas;

void setup(){
  size(550, 550);
  smooth();
  strokeWeight(2);
  stroke(0);

}


void draw(){
  background(255);
  radio = abs(dist(mouseX, mouseY, width/2, height/2));
  translate(width/2, height/2);
  for(int i = 0; i < lineas; i++){
    float x = cos(angulo*i) * radio;
    float y = sin(angulo*i) * radio;
    line(0, 0, x, y);
  }
}
