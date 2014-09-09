size(550, 550);
background(255);
smooth();
strokeWeight(2);
stroke(0);

float lineas = 36;
float radio = width/2;
float angulo = TWO_PI/lineas;
float medio_w = width/2;
float medio_h = height/2;


for(int i = 0; i < lineas; i++){
  float x = cos(angulo*i) * radio;
  float y = sin(angulo*i) * radio;
  line(medio_w, medio_h, x, y);
}
