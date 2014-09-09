/**
 * Arm. 
 * 
 * The angle of each segment is controlled with the mouseX and
 * mouseY position. The transformations applied to the first segment
 * are also applied to the second segment because they are inside
 * the same pushMatrix() and popMatrix() group.
*/

PImage lobo;

float x, y;
float x1, y1;

int contador = 0;
float angle3 = 0.0;
float angle4 = 0.0;

float angle1 = 0.0;
float angle2 = 0.0;

//largo del brazo
float segLength = 100;

void setup() {
  size(600, 800);
  strokeWeight(30);
  stroke(0, 160);
  
  //x = (width/4) * 3;
  //y = (height/4);
  
  x = 411;
  y = 288;
  
  lobo = loadImage("lobo.jpg");
}

void draw() {
  background(255);
  image(lobo, 200, 100, 300, 600);
  angle1 = (mouseX/float(width) - 0.5) * -PI;
  angle2 = (mouseY/float(height) - 0.5) * PI;

  pushMatrix();
  
  //brazo
  segment(x, y, angle1, 150);
 
   //antebrazo 
  segment(150, 0, angle2, 100);
  
  //mano
  segment(100, 0, angle3, 50);
  
  popMatrix();
  //println("mouseX: " + mouseX + ", mouseY: " + mouseY);
}

void segment(float x, float y, float a, float segLength) {
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
}

void keyPressed(){
  if(key == 'a'){
    contador++;
    println(contador);
  }
}
