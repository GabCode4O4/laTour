



void drawCube(float x, float y, float z, float w, float h, float l)
{
  pushMatrix();
  fill(200);
  stroke(0);
  strokeWeight(2);
  translate(x + w/2.0, y - h/2.0, z + l/2.0); // origine : coin inf gauche
  box(w, h, l);
  popMatrix();
}