
// cmd + r = run
// ctrl + shift + F = referencia 

int tama = 30;
int contador = 1;

void setup() {
  size(600, 600);
}

void draw() {
    background(#7C2222);

  //fill(255, 255, 255, 2);
  //rect(0, 0, 2000, 2000);

  tama++;
  contador++;

  if (tama >= 600) {
    tama = 30;
  }

  println(tama);
  translate(width/2, height/2);
  rotate(contador/4);
  rectMode(CENTER);
  noFill();
  strokeWeight(2);
  stroke(255, 175, 0);
  rect(0, 0, 5, tama);
}
