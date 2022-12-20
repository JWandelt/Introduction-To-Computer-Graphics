PShape dragon;
PShape spaceShip;
// Declare global variables
float x, y, z; // Position of the object
float rx, ry, rz; // Rotation of the object
float speed = 20; // Speed of the object

float wheel = 0;

void mouseWheel(MouseEvent event) {
  // Update the mouseWheel variable with the new wheel value
  wheel += event.getCount();
  println("Mouse wheel moved");
}

void setup() {
  size(1920, 1080, P3D);
  noStroke();  
  dragon = loadShape("alduin-dragon.obj");
  spaceShip = loadShape("justigue league flying vehicle.obj");
   // Initialize the position of the object
  x = 0;
  y = 0;
  z = 0;
}

float time = 0.f;

void draw()
{
  lights();
  background(0);
  translate(width/2, height/2, 0);
  
  fill(255,255,255);
  
  shininess(2.0);
  
  //Star
  pushMatrix();
    lightSpecular(255, 255, 255);
    specular(255, 255, 0);
    emissive(255,255,0);
    pointLight(255,255,0,0,0,0);
    sphere(30);
    //fill(255, 86, 67);
    //circle(0, 0, 100);
  popMatrix();

  emissive(0,0,0);
  specular(0,0,0);

  //First planet
  pushMatrix();
    ambient(100, 100, 100);
    specular(255,0,0);
    rotate(time, 10, 10, 10);
    translate(180,0,0);
    sphere(20);
    spotLight(1,213,245, 0,0,0, 1,0,0, 90,1);
    //rotate(time*1.9);
    //translate(75, 75);
    //fill(67, 92, 255);
    //circle(1, 1, 30);
      //First Moon
      pushMatrix();
        fill(0, 255, 0);
        specular(255,100,0);
        rotate(time*3.4);
        translate(25, 25, 0);
        sphere(10);
      popMatrix();
  popMatrix();
  
  ambient(255,255,255);
  
  //Second planet
  pushMatrix();
    specular(255,0,0);
    rotateY(time*1.3);
    translate(-160, 0, 0);
    fill(0, 204, 0);
    box(40);
      //First Moon
      pushMatrix();
      specular(50,100,0);
      rotate(time*3.0, 5, 5, 5);
      translate(35, 0, 0);
      fill(255, 255, 0);
      box(10); 
      popMatrix();
      //Second Moon
      pushMatrix();
      specular(255,100,0);
      rotateY(time*2.5);
      translate(-35, 0, 0);
      fill(255, 0, 0);
      box(10);
      popMatrix();
      //Third Moon
      pushMatrix();
      specular(100, 100, 100);
      rotate(time*2.0, 10, 10, 10);
      translate(0, 55, 0);
      fill(255, 153, 255);
      box(10);
      popMatrix();
      //Fourth Moon
      pushMatrix();
      specular(255, 255, 0);
      rotateX(time*1.5);
      translate(0, 80);
      fill(96, 96, 96);
      box(10);
      popMatrix();
  popMatrix();
  
  //Third planet
  pushMatrix();
    directionalLight(255,255,255, 0, 1, 0);
    specular(255,255,0);
    rotateY(time*0.8);
    rotateX(time*0.8);
    translate(700, 0);
    //fill(204, 102, 0);
    //circle(1, 1, 50);
    scale(0.1);
    shape(dragon, 0 , 0);
      //First Moon
      pushMatrix();
      specular(255,255,0);
      rotate(time*2.5);
      translate(500, 0);
      fill(128, 128, 128);
      sphere(20);
      popMatrix();
  popMatrix();
  
  //Fourth planet
  pushMatrix();
    specular(255,255,0);
    rotateZ(time*0.75);
    translate(400, 0);
    fill(102, 255, 255);
    sphere(50);
      //First Moon
      pushMatrix();
      specular(255,255,0);
      rotate(time*1.9);
      translate(90, 0);
      fill(204, 255, 204);
      sphere(25);
      popMatrix();
  popMatrix();
  
  time += .01f;
  
   if (keyPressed) {
    if (keyCode == UP) {
      y -= speed;
    } else if (keyCode == DOWN) {
      y += speed;
    } else if (keyCode == LEFT) {
      x -= speed;
    } else if (keyCode == RIGHT) {
      x += speed;
    } else if (key == 'w') {
      z -= speed;
    } else if (key == 's') {
      z += speed;
    } else if (key == 'a') {
      rx -= 0.1;
    } else if (key == 'd') {
      rx += 0.1;
    } else if (key == 'q') {
      ry -= 0.1;
    } else if (key == 'e') {
      ry += 0.1;
    } else if (key == 'z') {
      rz -= 0.1;
    } else if (key == 'x') {
      rz += 0.1;
    }
  }

  float fov = radians(map(wheel, -1, 1, 30, 120));
  float cameraZ = (height/2.0) / tan(fov/2.0);
  perspective(fov, float(width)/float(height), cameraZ/10.0, cameraZ*10.0);
  //camera(0, 0, (height/2.0) / tan(radians(fov / 2.0)), 0, 0, 0, 0, 1, 0);

  // Draw the object at the updated position and rotation
  translate(x, y, z);
  rotateX(rx);
  rotateY(ry);
  rotateZ(rz);
  shape(spaceShip, 0, 0);
}
