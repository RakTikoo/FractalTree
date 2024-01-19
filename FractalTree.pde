
void setup() {
  size(1000, 500);
}


void draw_branch(float angle, float len, float B_color) {
  //Draw Line
  stroke(125, 105, B_color);
  line(0, 0, 0, -len);

  if(len < 1) {
   return;
   }
  
  // Update for next iteration
  translate(0, -len);
  len = len/1.4;
  B_color += 25;
  
  // Recursive Calls
  rotate(angle);
  draw_branch(angle, len, B_color);
  rotate(-2*angle);
  draw_branch(angle, len, B_color);
  
  // Reset values
  rotate(angle);
  
  translate(0, 1.4*len);

  B_color -= 25;

}



void draw() {
  background(0);
  float angle = PI/4;
  float len = height/4;
  float B_color = 10;
  
   strokeWeight(1);
   translate(width/2, height);
   draw_branch(angle, len, B_color);

}
