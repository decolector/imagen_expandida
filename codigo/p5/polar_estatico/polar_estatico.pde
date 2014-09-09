size(550, 550);
background(255);
smooth();
strokeWeight(2);
stroke(0);

float lineas = 36;
float radio = width/2;
float angulo = TWO_PI/lineas;

translate(width/2, height/2);

for(int i = 0; i < lineas; i++){
  float x = cos(angulo*i) * radio;
  float y = sin(angulo*i) * radio;
  line(0, 0, x, y);
}
