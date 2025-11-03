float cube_width = 4.f;
float cube_height = 2.f;
int nb_cube_width = 10;
int nb_cube_height = 6;
float theta = 90.0f;


void drawCube(float x, float y, float z, float w, float h, float l)
{
  pushMatrix();
  fill(200);
 
  stroke(0);
  strokeWeight(2);
  translate(x,y,z);
  box(w, h, l);
  popMatrix();
}

