void drawCastle(float x, float y, float z) {
  pushMatrix();
  translate(x, y, z);

    
  tour(0,0,0);
  tour(-dist, 0, -dist);
  tour(dist, 0, -dist);
  tour(-dist, 0, dist);
  tour(dist, 0, dist);
  
    
  pushMatrix();
  translate(-dist + tour_width/2, 0, -dist);
  drawWall(0, 0, largeur_muraille/cube_width, hauteur_muraille);
  popMatrix();
  
  pushMatrix();
  translate(-dist + tour_width/2, 0, dist);
  drawWall(0, 0, largeur_muraille/cube_width, hauteur_muraille);
  popMatrix();
  
  pushMatrix();
  translate(-dist, 0, dist - tour_width/2);
  rotateY(HALF_PI);
  drawWall(0, 0, largeur_muraille/cube_width, hauteur_muraille);
  popMatrix();

  pushMatrix();
  translate(dist, 0, dist - tour_width/2);
  rotateY(HALF_PI);
  drawWall(0, 0, largeur_muraille/cube_width, hauteur_muraille);
  popMatrix();
  
  popMatrix();
}

