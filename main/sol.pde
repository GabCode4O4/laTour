void drawSol() {
  //Dessine le sol texturé c'est un cube plat 
  pushMatrix();

  float solSize = sol_texture.width;
  float solHeight = 1;

  noStroke();
  drawCube(-solSize/2, solHeight/2, -solSize/2,solSize, solHeight, solSize,sol_texture);

  popMatrix();
}