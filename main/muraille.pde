void muraille() {

  pushMatrix();
  translate(-dist + tour_width/2, 0, -dist);
  for (int i = 0; i < 6; i++) {

    drawWall(0, i * -2 * nb_cube_height, largeur_muraille, nb_cube_height);
 
  }
  drawCrenaux(0, -5 * wall_height - cube_height * 2, largeur_muraille); //crenaux
  popMatrix();
  
  pushMatrix();
  translate(-dist + tour_width/2, 0, dist);
   drawPorte(0, 0,largeur_muraille, nb_cube_height);
   for (int i = 1; i < 6; i++) {

    drawWall(0, i * -2 * nb_cube_height, largeur_muraille, nb_cube_height);
    
 
  }
  drawCrenaux(0, -5 * wall_height - cube_height * 2, largeur_muraille); //crenaux
  popMatrix();
  
  pushMatrix();
  translate(-dist, 0, dist - tour_width/2);
  rotateY(HALF_PI);
    for (int i = 0; i < 6; i++) {

    drawWall(0, i * -2 * nb_cube_height, largeur_muraille, nb_cube_height);
 
  }
  drawCrenaux(0, -5 * wall_height - cube_height * 2, largeur_muraille); //crenaux
  popMatrix();

  pushMatrix();
  translate(dist, 0, dist - tour_width/2);
  rotateY(HALF_PI);
 
    for (int i =0; i < 6; i++) {

    drawWall(0, i * -2 * nb_cube_height, largeur_muraille, nb_cube_height);
 
  }
  drawCrenaux(0, -5 * wall_height - cube_height * 2, largeur_muraille); //crenaux
  popMatrix();
  

}
