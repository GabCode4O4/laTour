

class Chateau {
  private float x, y, z;
  private Tour t1, t2, t3, t4, t5;
  
  Chateau(float x, float y, float z) {
    this.x = x;
    this.y = y;
    this.z = z;
    initialiserTours();
  }
  

  private void initialiserTours() {
    t1 = new Tour(0, 0, 0, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height);
    t2 = new Tour(-dist, 0, -dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height);
    t3 = new Tour(-dist, 0, dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height);
    t4 = new Tour(dist, 0, dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height);
    t5 = new Tour(dist, 0, -dist, wall_width, wall_height, cube_height, nb_cube_width, nb_cube_height);
  }
  

  void afficher() {
    pushMatrix();
    translate(x, y, z);
    
    t1.draw();
    t2.draw();
    t3.draw();
    t4.draw();
    t5.draw();
    
    muraille(t3, t2, 10);
    muraille(t3, t4, 10, true);
    muraille(t4, t5, 10);
    muraille(t5, t2, 10);
    popMatrix();
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
