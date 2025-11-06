

void drawCrenaux(float p_x, float p_y, float w)
{
  int nb_crenaux = 11; 
  float creanaux_width = w / float(nb_crenaux) * cube_width;

  for (int i = 0; i < nb_crenaux; i+=2) {
    float x = p_x + i * creanaux_width;
    drawCube(x, p_y, 0, creanaux_width, cube_height, cube_length);
    drawCube(x, p_y + cube_height, 0, creanaux_width, cube_height, cube_length);
  }
}
