

PImage hongo;

void setup(){
  size(500, 500);
  mush = loadImage("mushroom.png");
}

void draw(){
  for(int x = 0; x < width;x += hongo.width){
    for(int y = 0; y < height; y+= hongo.width){
      image(hongo, x,y);
    }
  }
}
