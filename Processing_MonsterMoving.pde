//  ASTON MCDONALD    28 APRIL 2017
// left, right arrow keys move the bull
// up, down arrow keys change the bull's color
float mx;
float my;
float mx1;
float my1;
float easing = 0.05;
int radius = 2;
int x = 25;
int y = #C9860A;

void setup() {
  size(500, 500);
}
void draw() {
  background(225);
  size(500, 500);
  
  //Horns
  stroke(#D1BF67);
  strokeWeight(20);
  line(x+249, 230, x+200, 180);
  line(x+200, 180, x+200, 150);
  line(x+249, 230, x+298, 180);
  line(x+298, 180, x+298, 150);
  
  //Head
  stroke(#0A0A0A);
  strokeWeight(1);
  fill(y);
  ellipse(x+249, 234, 100, 130);
  
  //Nose or Snout
  fill(#8B7F72);
  ellipse(x+249, 279, 60, 40);
  //Nostrils
  fill(#080807);
  ellipse(x+239, 279, 15, 15);
  ellipse(x+259, 279, 15, 15);
  //Eyes
  fill(#FFFFFF);
  rectMode(CENTER);
  mx = constrain(mouseX, x+217, x + 232);
  my = constrain(mouseY, 217, 222 );
  mx1 = constrain(mouseX, x+265, x + 280);
  my1 = constrain(mouseY, 217, 222);
  
  rect(x+225, 220, 20, 10);
  rect(x+273, 220, 20, 10);
  //Eyeballs
  fill(#1C1919);
  ellipse(mx, my, radius, radius);
  ellipse(mx1, my1, radius, radius);

  if (keyPressed && (key == CODED)) {  // If it’s a coded key
    if (keyCode == LEFT) {
      x--;
    } else if (keyCode == RIGHT) {
      x++;
    }
  }


     if (keyPressed && (key == CODED)) {  // If it’s a coded key
      if (keyCode == UP) {
      y = #08FF89;
    } else if (keyCode == DOWN) {
      y = #C9860A;


    }
     }
}