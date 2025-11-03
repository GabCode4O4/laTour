float theta;   
QueasyCam cam ;


void setup() {
  size(1280, 720, P3D);
    frameRate(60);
  cam = new QueasyCam(this);
  cam.position.x = 0;
  cam.position.y = 0;
  cam.position.z = 100;  
  
}

void draw() { 
  theta = 90.0f;
  background(99, 188, 227);
  lights();
  tour(0.0, 0.0);
}

void tour(float x, float y) {
  float len_mur = nb_cube_width * cube_width;

  for (int i = 0; i < 4; i++) {
    pushMatrix();
    rotateY(radians(i * theta));
    translate(len_mur/2, 0, 0); //on divise len_mur par 2 sinon y'a un décalage d'un mur entre chaque mur :))
    rotateY(radians(90));
    drawWall(x - len_mur/2, y, nb_cube_width, nb_cube_height);
    popMatrix();
  }
}
  
