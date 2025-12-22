

class Chateau {
/*Classe permettant de créer le chateaux avec tours et murailles
Le chateau dispose de 5 tours dont une centrale qui est la tour du roi, ainsi que de murailles dont une qui a une porte.
L'enceinte du chateau est paramètrable en choisissant la distance entre les tours*/

  private float x, y, z, dist;
  private Tour t1, t2, t3, t4, t5;
  
  Chateau(float x, float y, float z, float dist_tour) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.dist = dist_tour;
    initialiserTours();
  }
  
  private void initialiserTours() {
    t1 = new Tour(0, 0, 0, master_tour_width, wall_height, cube_height, master_tour_nb_cubes, nb_cube_height,master_tour_etages,true,master_porte);
    t2 = new Tour(-dist, 0, -dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height,tour_etages);
    t3 = new Tour(-dist, 0, dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height,tour_etages);
    t4 = new Tour(dist, 0, dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height,tour_etages);
    t5 = new Tour(dist, 0, -dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height,tour_etages);
  }
  

  void afficher() {

    pushMatrix();
    translate(x, y, z);
    
    t1.draw();
    t2.draw();
    t3.draw();
    t4.draw();
    t5.draw();
    
    muraille(t3, t2, hauteur_muraille);
    muraille(t3, t4, hauteur_muraille, true); // muraille avec porte
    muraille(t4, t5, hauteur_muraille);
    muraille(t5, t2, hauteur_muraille);
    popMatrix();
    drawSol();
    
  }
  
  void setPosition(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
  }
  
  float getX() { return x; }
  float getY() { return y; }
  float getZ() { return z; }
  
  Tour getTour(int index) {
    switch(index) {
      case 1: return t1;
      case 2: return t2;
      case 3: return t3;
      case 4: return t4;
      case 5: return t5;
      default: return null;
    }
  }

}
