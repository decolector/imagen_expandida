/*
Este sencillo ejemplo muestra como cargar sonido en processing
Para usar sus propios sonidos solo hay que agregar los sonidos en 
.mp3 o .wav a la carpeta data y cargarlos con minim.loadSample("archivo.mp3")
*/

import ddf.minim.*;

Minim minim;

//dos variables para dos sonidos
AudioSample snare;
AudioSample kick;

void setup()
{
  size(512, 200);
  
  //inicializamos la libreria para poder usarla
  //esta linea no cambia, y solo hay que ponerla una vez en el setup
  //antes de cargar los sonidos
  
  minim = new Minim(this);

  // Carga BD.mp3 de la carpeta data, igual que una imagen
  //el 512 es el tamanio del Buffer, es decir la resolucion del sonido,
  //generalmente no hay que cambiar este numero, asi que 512 esta bien
  
  kick = minim.loadSample( "BD.mp3", 512 );
  
  //lo mismo para SD.mp3
  snare = minim.loadSample( "SD.wav", 512 );
}

void draw()
{
  background(0);
  fill(255);
  
  //esta linea es solo para mostrar las instrucciones en la pantalla
  text("Haga click en el aquí o presione 'k' para escuchar un sonido", 20, height/2);
}

//cada vez que clikeamos
void mouseClicked() 
{
  //suena el snare
  snare.trigger();
}

//cada vez que se presiona una tecla
void keyPressed(){
  //si la tecla es la 'k'
  if(key == 'k'){
    //entonces suena el kick
    kick.trigger();
  }
}
