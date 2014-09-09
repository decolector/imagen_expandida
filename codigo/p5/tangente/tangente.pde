float angle = 0.0;
float radio = 100;

void setup(){
  size(500, 500);
  background(0);

}

void draw(){
  //background(0);
  stroke(255);
  translate(width/2, height/2);
  float x = cos(radians(angle)) * radio;
  float y = sin(radians(angle)) * radio;
  //line(width/2, height/2, mouseX, mouseY);
  /*
  if(mouseX > 0 && mouseY > 0){
    angle = tan(mouseX/mouseY);
  }
  */  
}

void keyPressed(){
  angle += 10;
}
