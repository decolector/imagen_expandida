//numeros y operadores
println(2 + 2);
println(2 - 2);
println(2 * 2);
println(2 / 2);
println(2.2 + 2.2);
println(2 + 2.2);

//tipos de datos

//enteros
int a = 1;
int b = 2;
int c = a + b;
println("el valor de c es: " + c);

//fraccionarios o numeros de coma flotante
float d = 3.5;
float e = 4.6;
println(d + c);

//texto
char letra = 's';
String palabra = "esfera";
println(palabra + letra);

//booleanos

boolean foo = true;
boolean bar = false;

//conversion
println( int(c));
println(int(foo));
println( float(a));
println(char(90));

//aleatoriedad

float randval1 = random(1);
println(randval1);

//condicionales

if(a < b){
  println("a es menor que b");
}else{
  println("a no es menor que b");
}

if(a < b){
  println("a es menor que b");
}else if(a == b){
  println("a y b son iguales");
}else{
  println("a es mayor que b");
}

if(foo){
  println("foo es verdadero");
}

if(!bar){
  println("bar es falso");
}

if(foo && !bar){
  println("foo es verdadero y bar es falso");
}

//canvas
size(800, 600);
println("ancho del canvas: " + width + ", alto del canvas: " + height);
background(255);
println("ancho de pantalla: " + displayWidth + ", alto de pantalla: " + displayHeight);


//primitivos gráficos

point(400, 300);
point(50, 50);
point(width - 50, 50);
point(width - 50, height - 50);
point(50, height - 50);

line(width/2 - 20, height/2, width/2 + 20, height/2);
line(width/2, height/2 - 20, width/2, height/2 + 20);

noFill();
//ellipse(width/2 - 25, height/2 - 25, 50, 50);
//ellipseMode(CENTER);
ellipse(width/2, height/2, 50, 50);

rect(width/2 - 30, height/2 - 30, 60, 60);
