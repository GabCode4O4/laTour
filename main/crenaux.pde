

void drawCrenaux(float p_x, float p_y, float w){
  int nb_crenaux = 11  * int( w) /int(nb_cube_width); // 11 est une valeur arbitraire ( c'est plus joli comme ça )

  float crenaux_width = w/float(nb_crenaux) * cube_width;
  for (int i = 0; i < nb_crenaux; i+=2) {
    float x = p_x + i* crenaux_width;
    drawCube(x, p_y, 0, crenaux_width, cube_height, cube_length,cube_texture);
    drawCube(x, p_y - cube_height, 0, crenaux_width, cube_height, cube_length,cube_texture);
 }
}