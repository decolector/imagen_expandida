PImage natura, ciudad;
int ancho = 20;
void setup(){
   size(800, 600);
   natura = loadImage("paisaje_natural.jpg");
   ciudad = loadImage("paisaje_urbano.jpg");
}

void draw(){
  for(int x = 0; x < width; x += ancho ){
    if(x%(ancho*2) == 0){
      copy(natura, x, 0, ancho, natura.height, x, 0, ancho, height);
    }else{
      copy(ciudad, x, 0, ancho, natura.height, x, 0, ancho, height);
    }
  }
}
