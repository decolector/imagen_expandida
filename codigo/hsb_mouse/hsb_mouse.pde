int distX = 20;
int distY = 10;

void setup(){
  size(800, 400);
  background(0);
}

void draw(){
  
  distX = mouseX + 2;
  distY = mouseY + 2;
  colorMode(HSB, width, height, 100);
  for(int posY = 0; posY < height; posY += distY){
    for(int posX = 0; posX < width; posX += distX){
      fill(posX, height-posY, 100);
      rect(posX, posY, distX, distY);
    }
  } 
}
