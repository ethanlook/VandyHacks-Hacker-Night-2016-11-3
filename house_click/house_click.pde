ArrayList<Integer> houseXs = new ArrayList<Integer>();
ArrayList<Integer> houseYs = new ArrayList<Integer>();

void setup() {
  size(800, 600);
}

void draw() {
  // Set the background color.
  background(0, 150, 200);
  
  // Draw the grass
  fill(0, 255, 0);
  noStroke();
  rect(0, height/2, width, height/2);
  
  // Draw all of the houses.
  for (int i = 0; i < houseXs.size(); i++) {
    drawHouse(houseXs.get(i), houseYs.get(i));
  }
}

void mouseClicked() {
  houseXs.add(mouseX);
  houseYs.add(mouseY);
}

void drawHouse(float x, float y) {
  // Draw the house
  noStroke();
  fill(204, 102, 153);
  rect(x, y, 200, 75);
  
  // Draw the roof
  fill(102, 51, 0);
  stroke(0);
  strokeWeight(2);
  triangle(x - 10, y, x + 100, y - 50, x + 210, y);
}