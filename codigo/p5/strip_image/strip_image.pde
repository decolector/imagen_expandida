PImage natura;
int ancho = 20;
void setup(){
   size(800, 600);
   natura = loadImage("paisaje_natural.jpg");
   //ciudad = loadImage("paisaje_urbano.jpg");
}

void draw(){
  for(int x = 0; x < width; x += ancho ){
    copy(natura, natura.width/2, 0, ancho, natura.height, x, 0, ancho, height);
  }
}
