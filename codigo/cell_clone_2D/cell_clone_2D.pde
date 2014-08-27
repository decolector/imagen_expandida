
int clicks = 1;

void setup(){
  size(500, 500);
  ellipseMode(CORNER);
}

void draw(){
  background(0);
  //numero total de circulos
  int circs = int(pow(2, clicks));
  
  //numero de riculos por fila
  int fila = int(circs/2);

  //ancho de cada circulo
  float ancho = width/fila;
  
  //primera iteracion para generar filas;
  for(int i = 0; i < fila; i++){
    
    //segunda iteracion para generar las columbas;
     for(int j = 0; j < fila; j++){
       //las posiciones se sacan multiplicando 
       //el ancho por el contador de la iteracion correspondiente
       float x = i*ancho;
       float y = j*ancho;
       //dibujamos el elipse
       ellipse(x,y,ancho,ancho);
     }
  }
}

//por cada click del mouse
void mouseClicked(){
  //aumentamos el contador de clicks
  clicks++;
}
