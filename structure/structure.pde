// The statements in the
// setup() function 
// execute once when the
// program begins
void setup() {
  // Size must be the
  // first statement
  size(640, 360);

  // Set line drawing 
  // color to white
  stroke(255);

  // Set the frame rate to
  // 30 frames per second
  frameRate(30);
}

// The statements in draw()
// are executed until the 
// program is stopped. Each
// statement is executed in 
// sequence and after the
// last line is read, the first 
// line is executed again.
void draw() { 

  // Draw a red circle in 
  // the middle of the
  // screen.

  fill(255, 0, 0);
  ellipse(width/2, height/2, 100, 100);
}