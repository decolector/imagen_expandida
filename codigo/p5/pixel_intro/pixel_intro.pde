PImage hongo;

void setup(){
  size(480, 480);
  hongo = loadImage("mushroom.png");
  hongo.loadPixels();
}

void draw(){
  background(255);
  for(int x = 0; x < hongo.width; x++){
    for(int y = 0; y < hongo.height; y++){
      color col = hongo.get(x,y);
      fill(col);
      rect(x*10, y*10, 10,10);
    }
  }
}
