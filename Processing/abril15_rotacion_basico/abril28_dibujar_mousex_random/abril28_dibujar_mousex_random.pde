
// ctrl + T - organizar el código
// ctrl + R - RUN
// ctrl + shift + F - abre la referencia

void setup() {
  size(500, 500);
  //frameRate(10);
  background(#B6A8B9);
}

void draw() {
  //translate(width/2, height/2);
  //rotate(radians(180));
  rectMode(CENTER);
  fill(255, random(255), 0);
  rect(mouseX, mouseY, random(50), random(20));
}
