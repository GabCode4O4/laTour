float cube_width = 4.f;
float cube_height = 2.f;
int nb_cube_width = 10;
int nb_cube_height = 6;



void drawCube(float x, float y, float z, float w, float h, float l, float theta)
{
  pushMatrix();
  fill(200);
 
  stroke(0);
  strokeWeight(2);
  translate(x,y,z);
  box(w, h, l);
  popMatrix();
}
