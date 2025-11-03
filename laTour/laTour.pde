float theta;   
QueasyCam cam ;


void setup() {
  size(1280, 720, P3D);
    frameRate(60);
  cam = new QueasyCam(this);
  cam.position.x = width/2;
  cam.position.y = height/2;
  cam.position.z = 700;  
  
}

void draw() { 
  background(99, 188, 227);
  lights();
  drawWall(12,14);
}