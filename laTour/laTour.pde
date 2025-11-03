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
  float wall_width = nb_cube_width * cube_width;
  float wall_height = nb_cube_height * cube_height;  

  for (int i = 0; i < 4; i++) {
    pushMatrix();
    rotateY(radians(i * theta));
    translate(wall_width/2, 0, 0); //on divise wall_width par 2 sinon y'a un décalage d'un mur entre chaque mur :))
    rotateY(radians(90));
    drawPorte(x - wall_width/2, y , nb_cube_width, nb_cube_height); // porte 
    drawWall(x - wall_width/2, y - 1 * wall_height, nb_cube_width, nb_cube_height); // mur 
    drawMeurtriere(x - wall_width/2, y - 2 *wall_height, nb_cube_width,nb_cube_height); // meurtrière
    drawWall(x - wall_width/2, y - 3* wall_height, nb_cube_width, nb_cube_height); // mur 
    //drawCrenaux(x - wall_width/2, y - 4* wall_height, nb_cube_width); // crenaux
    popMatrix();
  }

  
}
  
