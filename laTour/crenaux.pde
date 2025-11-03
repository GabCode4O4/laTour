

void drawCrenaux(float p_x, float p_y, int w)
{
  int nb_crenaux = int(w * 0.7); 
  float shift = float(w) / float(nb_crenaux);

  for (int i = 0; i < nb_crenaux; i++) {
    float x = p_x + i * shift * cube_width;
    drawCube(x, p_y, 0, cube_width, cube_height, cube_width);
    drawCube(x, p_y + cube_height, 0, cube_width, cube_height, cube_width);
  }
}
