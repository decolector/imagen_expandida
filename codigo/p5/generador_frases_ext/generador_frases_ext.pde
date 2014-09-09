String frase = "";

String[] art;
String[] adj;
String[] nou;

void setup() {
  size(500, 400);
  background(255);
  fill(0);
  art = loadStrings("art.txt");
  adj = loadStrings("adj.txt");
  nou = loadStrings("nou.txt");
  
  new_sentence();
}

void draw() {
}

void mousePressed() {
  new_sentence();
}

String write_word(String[] words) {
  int n = int(random(words.length));
  return words[n];
}


void new_sentence() {
  background(255);
  //frase = art[int(random(0, art.length))] + " " + adj[int(random(0, adj.length))] + " " + nou[int(random(0, nou.length))];
  frase = write_word(art) + " " + write_word(adj) + " " + write_word(nou);
  println(frase);
  text(frase, 10, height/2);
}


