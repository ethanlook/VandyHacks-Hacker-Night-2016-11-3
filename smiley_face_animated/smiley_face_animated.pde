int smileyX, smileyY;
int smileySpeed;

void setup() {
  size(500, 500);
  
  smileyX = 0;
  smileyY = height/2;
  smileySpeed = 2;
}

void draw() {
  
  background(255, 102, 255);
  
  drawSmileyFace(smileyX, smileyY, 200, 200);
  
  if (smileyX >= width) {
    smileySpeed = -4;
  }
  if (smileyX <= 0) {
    smileySpeed = 2;
  }
  smileyX = smileyX + smileySpeed;
}

void drawSmileyFace(float x, float y, float w, float h) {
  strokeWeight(5);
  stroke(0);
  
  fill(255, 255, 0);
  ellipse(x, y, w, h);
  
  fill(0);
  noStroke();
  ellipse(x - w / 8, y - h / 8, w / 8, h / 4);
  ellipse(x + w / 8, y - h / 8, w / 8, h / 4);
  
  arc(x, y + h / 8, w / 2, h / 4, 0, PI);
}