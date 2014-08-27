int clicks = 0;

void setup(){
  size(500, 500);
  ellipseMode(CORNER);
}

void draw(){
  background(0);
  for(int i = 0; i < clicks; i++){
    float ancho = width/clicks;
    println(ancho);
    ellipse(i*ancho, height/2, ancho, ancho);
  }
}

void mouseClicked(){
  clicks++;
}
