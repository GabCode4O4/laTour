void drawCastle(float x, float y, float z) {
  pushMatrix();
  translate(x, y, z);

    
  tour(0,0,0);
  tour(-dist, 0, -dist);
  tour(dist, 0, -dist);
  tour(-dist, 0, dist);
  tour(dist, 0, dist);

  muraille();
  popMatrix();
}

