String frase = "";

String[] art = {
  "el", "mi", "tu", "nuestro", "eso", "este", "cada", "uno", "el único", "su", "ella"
};
String[] adj = {
  "feliz", "rojo", "rapido", "elastico", "sonriente", "increíble", "infinto", "sorprendente", 
  "misterioso", "brillante", "verde", "azul", "cansado", "duro", "suave", "transparente", "largo", "corto", 
  "excelente", "ruidoso", "silencioso", "raro", "normal", "típico", "viviente", "limpio", "glamoroso", 
  "fino", "guapo", "perezoso", "miedoso", "impotente", "flaco", "melodico", "bobo", 
  "amable", "valiente", "chevere", "anciana", "moderna", "joven", "dulce", "mojada", "frio", 
  "seco", "pesada", "industrial", "complejo", "segura", "asombrosa", "arrecha", "genial", 
  "falso", "irreal", "desnuda", "inteligente", "listo", "curioso", "extraña", "unica", "vacio", 
  "gris", "saturado", "borroso"
};
String[] nou = {
  "bosque", "arbol", "flor", "cielo", "pasto", "montaña", "carro", "computador", "hombre", "mujer", "perro", 
  "elefante", "hormiga", "camino", "mariposa", "telefono", "abuela", "colegio", "cama", "ratón", 
  "teclado", "bicicleta", "spaghetti", "bebida", "gato", "camiseta", "tapete", "pared", "poster", 
  "aeropuerto", "puente", "camino", "río", "playa", "escultura", "piano", "guitarra", "fruta", 
  "banano", "manzana", "fresa", "banda elástica", "saxofon", "ventana", "medusa", 
  "vibrador", "papel", "fotografía", "pintura", "sombrero", "espacio en blanco", "tenedor", 
  "mision", "gol", "proyecto", "beso", "molino", "bombillo", "microfono", 
  "corazón", "celular", "destornillador"
}; 
String[] pre = {
  "debajo de", "en frente de", "encima de", "detrás de", "cerca a", "siguiendo a", "dentro de", "al lado de", 
  "no es parecido a", "parecido a", "debajo", "en contra de", "dentro de", "más allá", "considerando", "sin", 
  "con", "hacia"
};
String[] ver = {
  "canta", "baila", "estaba bailando", "corre", "va a correr", "camina", 
  "vuela", "se mueve", "se movió", "se va a mover", "brilla", "brilló", "gira", "prometió", 
  "abraza", "le pusó los cachos", "espera", "está esperando", "está estudiando", "nada", 
  "viaja", "viajó", "juega", "jugó", "disfruta", "va a disfrutar", 
  "ilumina", "se levanta", "come", "toma", "calcula", "besó", "besa", "escucha", 
  "navegó", "responde", "sonríe", "va a sonreir", "chupa", 
  "se pregunta", "está pensando", "es", "fue", "va a ser", "podría ser", "nunca fue"
};

void setup() {
  size(500, 400);
  background(255);
  fill(0);
  new_sentence();
}

void draw() {
}

void mousePressed() {
  new_sentence();
}
/*
void write_word(String[] words, int x, int y) {
  int n = int(random(words.length));
  
  textSize(random(10, 60));
  
  text(words[n], x, y);
}
*/

void new_sentence() {
  background(255);
  frase = art[int(random(0, art.length))] + " " + adj[int(random(0, adj.length))] + " " + nou[int(random(0, nou.length))];
  println(frase);
  text(frase, 10, height/2);
}


