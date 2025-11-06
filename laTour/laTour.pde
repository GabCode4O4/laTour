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
  
  background(99, 188, 227);
  lights();

  float dist = 50 * cube_width; //distance entre les tours 
  float tour_width = cube_width * (1+nb_cube_width);
  tour(0, 0.f , 0.f); 

  drawPorte(tour_width/2, 0.f , 50 - (1+nb_cube_width), 6);
  tour(dist, 0.f, 0.f);  

}

void tour(float x, float y, float z) {
  float wall_width = nb_cube_width * cube_width;
  float wall_height = nb_cube_height * cube_height;  

  pushMatrix();
  translate(x, y, z);  //on déplace toute la tour (son centre)

  for (int i = 0; i < 4; i++) {
    pushMatrix();
    rotateY(radians(i * theta));   //Rotation de chaque face de la tour     
    translate(wall_width/2, 0, 0);   
    rotateY(radians(90)); // Rotation de la face du mur en gros le premier rotate nous place du côté de la tour ou on veut mettre le mur et celui la fait en sorte que le mur soit bien orienté face à l'extérieur de la tour
    drawWall(-wall_width/2, 0, nb_cube_width, nb_cube_height); //porte
    drawWall(-wall_width/2 , -1 * wall_height, nb_cube_width, nb_cube_height); //mur 
    drawMeurtriere(-wall_width/2, -2 * wall_height, nb_cube_width, nb_cube_height); // meurtriere
    drawWall(-wall_width/2, -3 * wall_height, nb_cube_width, nb_cube_height); //mur
    drawCrenaux(-wall_width/2, -3 * wall_height - cube_height * 2, nb_cube_width); //crenaux
    popMatrix();
  }
  popMatrix();
}

  

