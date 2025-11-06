void tour(float x, float y, float z) {


pushMatrix();
translate(x, y, z); //on déplace toute la tour (son centre)


for (int i = 0; i < 4; i++) {
 pushMatrix();
 rotateY(i * theta);  //Rotation de chaque face de la tour     
 translate(wall_width/2, 0, 0);  
 rotateY(theta); // Rotation de la face du mur en gros le premier rotate nous place du côté de la tour ou on veut mettre le mur et celui la fait en sorte que le mur soit bien orienté face à l'extérieur de la tour
 drawWall(-wall_width/2, 0, nb_cube_width, nb_cube_height); //porte
 drawMeurtriere(-wall_width/2, -1 * wall_height, nb_cube_width, nb_cube_height); // meurtriere
 drawWall(-wall_width/2, -2 * wall_height, nb_cube_width, nb_cube_height); //mur
 drawMeurtriere(-wall_width/2, -3 * wall_height, nb_cube_width, nb_cube_height); // meurtriere
 drawWall(-wall_width/2, -4 * wall_height, nb_cube_width, nb_cube_height); //mur
 drawMeurtriere(-wall_width/2, -5 * wall_height, nb_cube_width, nb_cube_height); // meurtriere
 drawWall(-wall_width/2, -6 * wall_height, nb_cube_width, nb_cube_height); //mur
 drawCrenaux(-wall_width/2, -6 * wall_height - cube_height * 2, nb_cube_width); //crenaux
 popMatrix();
 }
 popMatrix();
}

  

