void setup() {
  size(1920, 1080, P3D);
  noStroke();  
  bg = loadImage("bg.jpg");
}

float time = 0.f;
PImage bg;

void draw()
{
  background(0);
  image(bg, 0, 0);
   stroke(0); 
  translate(width/2, height/2);
  

  
  //Star
  pushMatrix();
    rotate(time);
    translate(0,0);
    fill(255, 86, 67);
    circle(0, 0, 100);
  popMatrix();

  //First planet
  pushMatrix();
    rotate(time*1.9);
    translate(75, 75);
    fill(67, 92, 255);
    circle(1, 1, 30);
      //First Moon
      pushMatrix();
      rotate(time*3.4);
      translate(20, 20);
      fill(128, 128, 128);
      circle(1, 1, 10);
      popMatrix();
  popMatrix();
  
  //Second planet
  pushMatrix();
    rotate(time*1.3);
    translate(-160, -160);
    fill(0, 204, 0);
    circle(1, 1, 50);
      //First Moon
      pushMatrix();
      rotate(time*3.0);
      translate(22.5, 22.5);
      fill(255, 255, 0);
      circle(1, 1, 10);
      popMatrix();
      //Second Moon
      pushMatrix();
      rotate(time*2.5);
      translate(-35, -35);
      fill(255, 0, 0);
      circle(1, 1, 10);
      popMatrix();
      //Third Moon
      pushMatrix();
      rotate(time*2.0);
      translate(20, 55);
      fill(255, 153, 255);
      circle(1, 1, 10);
      popMatrix();
      //Fourth Moon
      pushMatrix();
      rotate(time*1.5);
      translate(30, 80);
      fill(96, 96, 96);
      circle(1, 1, 10);
      popMatrix();
  popMatrix();
  
  //Third planet
  pushMatrix();
    rotate(time*1.2);
    translate(300, 300);
    fill(204, 102, 0);
    circle(1, 1, 50);
      //First Moon
      pushMatrix();
      rotate(time*1.8);
      translate(25, 25);
      fill(128, 128, 128);
      circle(1, 1, 20);
      popMatrix();
  popMatrix();
  
  //Fourth planet
  pushMatrix();
    rotate(time*0.75);
    translate(400, 400);
    fill(102, 255, 255);
    circle(1, 1, 100);
      //First Moon
      pushMatrix();
      rotate(time*1.9);
      translate(50, 50);
      fill(204, 255, 204);
      circle(1, 1, 25);
      popMatrix();
  popMatrix();
  
  time += .01f;
}
