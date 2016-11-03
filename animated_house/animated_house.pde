int x, y;

void setup() {
  size(600, 400);
  
  // x and y of the upper left of the house.
  x = 0;
  y = height/2 - 75;
}

void draw() {
  
  // Set the background color.
  background(0, 150, 200);
  
  // Draw the grass
  fill(0, 255, 0);
  noStroke();
  rect(0, height/2, width, height/2);
  
  // Draw the house
  fill(204, 102, 153);
  rect(x, y, 200, 75);
  
  // Draw the roof
  fill(102, 51, 0);
  stroke(0);
  strokeWeight(2);
  triangle(x - 10, y, x + 100, y - 50, x + 210, y);
  
  x = x + 2;
}