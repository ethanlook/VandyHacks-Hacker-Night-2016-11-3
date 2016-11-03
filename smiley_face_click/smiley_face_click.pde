ArrayList<Integer> smileyXs = new ArrayList<Integer>();
ArrayList<Integer> smileyYs = new ArrayList<Integer>();

void setup() {
  size(500, 500);
}

void draw() {
  
  background(255, 102, 255);
  
  for (int i = 0; i < smileyXs.size(); i++) {
    drawSmileyFace(smileyXs.get(i), smileyYs.get(i), 50, 50);
  }
}

void mouseClicked() {
  smileyXs.add(mouseX);
  smileyYs.add(mouseY);
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