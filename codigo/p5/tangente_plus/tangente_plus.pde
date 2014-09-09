float angle = 0.0;
float radio = 250;
float col = 0;

void setup(){
  size(500, 500);
  background(0);

}

void draw(){
  //background(0);
  stroke(random(0, col), 255, col);
  translate(width/2, height/2);
  for(int i = 0; i < radio; i += 10){
    float rangle = random(angle - 10, angle + 20);
    fill(col);
    float subradio = random(i, i + 5);
    float x = cos(radians(rangle)) * subradio;
    float y = sin(radians(rangle)) * subradio;
    //ellipse(x,y, 5, 5);
    point(x,y);
  }
  //line(0,0,x,y); 
}


/*
void keyPressed(){
  angle += 20;
}
*/

void mouseDragged(){
  angle = mouseX;
  col = map(mouseY, 0, height, 0, 255);
}
