


void drawCube(float x, float y, float z, float w, float h, float l,PImage img) {
  pushMatrix();
  noFill();
  translate(x + w/2.0, y - h/2.0, z + l/2.0);

  textureMode(NORMAL);
  beginShape(QUADS);
  texture(img);

// 1 groupe de vertex par face
  vertex(-w/2, -h/2,  l/2, 0, 0);
  vertex( w/2, -h/2,  l/2, 1, 0);
  vertex( w/2,  h/2,  l/2, 1, 1);
  vertex(-w/2,  h/2,  l/2, 0, 1);

  vertex( w/2, -h/2, -l/2, 0, 0);
  vertex(-w/2, -h/2, -l/2, 1, 0);
  vertex(-w/2,  h/2, -l/2, 1, 1);
  vertex( w/2,  h/2, -l/2, 0, 1);

  vertex(-w/2,  h/2,  l/2, 0, 0);
  vertex( w/2,  h/2,  l/2, 1, 0);
  vertex( w/2,  h/2, -l/2, 1, 1);
  vertex(-w/2,  h/2, -l/2, 0, 1);

  vertex(-w/2, -h/2, -l/2, 0, 0);
  vertex( w/2, -h/2, -l/2, 1, 0);
  vertex( w/2, -h/2,  l/2, 1, 1);
  vertex(-w/2, -h/2,  l/2, 0, 1);

  vertex( w/2, -h/2,  l/2, 0, 0);
  vertex( w/2, -h/2, -l/2, 1, 0);
  vertex( w/2,  h/2, -l/2, 1, 1);
  vertex( w/2,  h/2,  l/2, 0, 1);

  vertex(-w/2, -h/2, -l/2, 0, 0);
  vertex(-w/2, -h/2,  l/2, 1, 0);
  vertex(-w/2,  h/2,  l/2, 1, 1);
  vertex(-w/2,  h/2, -l/2, 0, 1);

  endShape();
  popMatrix();
}
