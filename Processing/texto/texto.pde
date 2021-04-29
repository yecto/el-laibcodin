

int angulo;
PFont miFuente;
int contador = 1;



void setup() {
  background (#B6A8B9);
  size (800, 800);
  smooth();
  miFuente = loadFont("InputMono-Regular-48.vlw");
}

void draw() {

  fill(182, 168, 185, 52);
  noStroke();
  rectMode(CORNERS);
  rect(0, 0, width, height);

  contador++;  
  fill(0);
  textSize(random(30, 32));
  translate(width/2, height/2);
  rotate(radians(contador/2));
  textLeading(40);  
  fill(#455e89);
  text("tiempo de la memoria", 0, 0, 300, 300);
}
