// Dessine une muraille entre deux tours 
void muraille(Tour t1, Tour t2, float p_h, boolean door, boolean has_crenaux, float offset)
{
  PVector u = new PVector(1.f, 0.f, 0.f); // vecteur orientation mur de base
  PVector v = t2.getPosition().sub(t1.getPosition());  // vecteur entre les deux tours
  float angle = PVector.angleBetween(u, v);
  float distance_tower = PVector.dist(u, v) / cube_width; // distance entre les deux tours en cube
  float muraille_length = distance_tower - (t1.getNbCubeWidth() + t2.getNbCubeWidth())/2;

  pushMatrix();
  translate(t1.getPosition().x, t1.getPosition().y, t1.getPosition().z);
  rotateY(angle);
  translate(t1.getNbCubeWidth() * cube_width/2, 0, -cube_width/2 + offset);
  
  if (door) {
    drawPorte(0, 0, muraille_length, door_hole_height);
    drawWall(0, -door_hole_height * cube_height, muraille_length, p_h-door_hole_height);
  }
   else {
    drawWall(0, 0, muraille_length, p_h);
  }
  if (has_crenaux)
    drawCrenaux(0, -p_h * cube_height, muraille_length);
  popMatrix();
} 

void muraille(Tour t1, Tour t2, float p_h, boolean door){
  muraille(t1, t2, p_h, door, true, -cube_width);
  muraille(t1, t2, p_h, door,false,  0);
  muraille(t1, t2, p_h, door, true, cube_width);
} 

void muraille(Tour t1, Tour t2, float p_h){ muraille(t1, t2, p_h, false);  } 
