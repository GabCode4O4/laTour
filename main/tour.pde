class Tour {
  // Attributs de position
  private float x, y, z;
  
  // Dimensions et paramètres
  private float wall_width;
  private float wall_height;
  private float cube_height;
  private int nb_cube_width;
  private int nb_cube_height;
  private float theta;
  private int nb_etages;
  
  // Constructeur
  Tour(float x, float y, float z, float wall_width_t, float wall_height, 
       float cube_height, int nb_cube_width, int nb_cube_height,int nb_etages) {
    this.x = x;
    this.y = y;
    this.z = z;
    this.wall_width = wall_width_t;
    this.wall_height = wall_height;
    this.cube_height = cube_height;
    this.nb_cube_width = nb_cube_width;
    this.nb_cube_height = nb_cube_height;
    this.theta = theta1;
    this.nb_etages = nb_etages;
  }
  
  float getNbCubeWidth() { return this.nb_cube_width;}
  PVector getPosition() { return new PVector(x, y, z);}

  void draw() {
    pushMatrix();
    translate(x, y, z); 

  
    for (int i = 0; i < 4; i++) {
      pushMatrix();
      rotateY(i * theta);    
      translate(this.wall_width/2, 0, 0);  
      rotateY(theta);

      int j;
      for (j = 0; j < nb_etages; j++) {
        if (j == 0 || (j+nb_etages) % 2 == 1)
          drawWall(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width, this.nb_cube_height);
        else
          drawMeurtriere(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width, this.nb_cube_height);
      }
      drawCrenaux(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width);
      popMatrix();
    }

    pushMatrix();
    float hTour = nb_etages * wall_height ;
    translate(0, -hTour, 0);

    float mid   = wall_width / 2.0; 
    float hToit = wall_height * 1.5;

    textureMode(NORMAL);
    beginShape(TRIANGLES);
    texture(toit_texture);

    float ax = 0;
    float ay = -hToit;
    float az = 0;

    float x1 = -mid, z1 = -mid;  
    float x2 =  mid, z2 = -mid;  
    float x3 =  mid, z3 =  mid;  
    float x4 = -mid, z4 =  mid;  

    float ua = 0.5, va = 0.0; 
    float ubL = 0.0, vb = 1.0; 
    float ubR = 1.0, vbR = 1.0;

    vertex(x1, 0, z1, ubL, vb);   
    vertex(x2, 0, z2, ubR, vbR);  
    vertex(ax, ay, az, ua, va);   

    vertex(x2, 0, z2, ubL, vb);  
    vertex(x3, 0, z3, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    vertex(x3, 0, z3, ubL, vb);
    vertex(x4, 0, z4, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    vertex(x4, 0, z4, ubL, vb);
    vertex(x1, 0, z1, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    endShape();
    popMatrix();

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
  

}
