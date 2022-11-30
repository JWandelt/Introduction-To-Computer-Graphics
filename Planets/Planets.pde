void setup() {
  size(1920, 1080, P3D);
  noStroke();  
  background(255);
}

float time = 0.f;

void draw()
{
  background(0);
  
  translate(width/2, height/2);
  
  //Star
  pushMatrix();
    rotate(time);
    translate(0,0);
    circle(1, 1, 100);
  popMatrix();
  
  //First planet
  pushMatrix();
    rotate(time);
    translate(100, 100);
    circle(1, 1, 50);
      //First Moon
      pushMatrix();
      rotate(time);
      translate(50, 50);
      circle(1, 1, 25);
      popMatrix();
  popMatrix();
  
  time += .01f;
}
