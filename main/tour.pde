class Tour {
/*Classe permettant de créer une tour paramètrable, hauteur largeur, toit.
Dispose de meurtrière et de créneaux*/

  private float x, y, z;
  private float wall_width;
  private float wall_height;
  private float cube_height;
  private int nb_cube_width;
  private int nb_cube_height;
  private float theta;
  private int nb_etages;
  private boolean isToit;
  private BoolInt isPorte;
  
  // Constructeur principal
  Tour(float x, float y, float z, float wall_width_t, float wall_height, 
       float cube_height, int nb_cube_width, int nb_cube_height,int nb_etages, boolean isToit, BoolInt isPorte) {
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
    this.isToit = isToit;
    this.isPorte = isPorte;
  }

  // Surcharge avec choix du toit pas de porte par défaut false
  Tour(float x, float y, float z, float wall_width_t, float wall_height, 
       float cube_height, int nb_cube_width, int nb_cube_height,int nb_etages, boolean isToit) {
     this(x, y, z, wall_width_t, wall_height, cube_height, nb_cube_width, nb_cube_height, nb_etages, isToit, new BoolInt(false, 0));
  }

  //Surcharge sans toit ni porte
  Tour(float x, float y, float z, float wall_width_t, float wall_height, 
       float cube_height, int nb_cube_width, int nb_cube_height,int nb_etages) {
     this(x, y, z, wall_width_t, wall_height, cube_height, nb_cube_width, nb_cube_height, nb_etages, false, new BoolInt(false, 0));
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
        //si la tour a une porte
        if (isPorte.b && i == isPorte.val && j == 0) {
             float doorH = 6;
             float doorW = 2; 
             drawPorte(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width+1, doorH, doorW, true);
             //le dessus de la porte pour combler l'étage si on fait une porte plus petite que la hauteur de l'étage
             if (doorH < this.nb_cube_height) drawWall(-this.wall_width/2, -j * this.wall_height - doorH * cube_height, this.nb_cube_width+1, this.nb_cube_height - doorH);
        }
        else if (j == 0 || (j+nb_etages) % 2 == 1)
          drawWall(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width+1, this.nb_cube_height);
        else
          drawMeurtriere(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width+1, this.nb_cube_height);
      }
      drawCrenaux(-this.wall_width/2, -j * this.wall_height, this.nb_cube_width);
      popMatrix();
    }


    float hTour = nb_etages * wall_height;  
    
    float mid   = wall_width / 2.0; // moitié de la largeur du mur pour centrer le toit

    if (isToit){
      pushMatrix();
    translate(0, -hTour, 0);
    float hToit = wall_height * 1.5; //hauteur du toit

    textureMode(NORMAL);
    beginShape(TRIANGLES);
    texture(toit_texture);

    //sommet du toit
    float ax = 0;
    float ay = -hToit;
    float az = 0;

    float x1 = -mid, z1 = -mid; // coin gauche arrière 
    float x2 =  mid, z2 = -mid; // coin droit arrière
    float x3 =  mid, z3 =  mid; // coin droit avant
    float x4 = -mid, z4 =  mid; // coin gauche avant

    float ua = 0.5, va = 0.0; //coordonnées texture sommet du toit
    float ubL = 0.0, vb = 1.0;//coordonnées texture base du toit gauche
    float ubR = 1.0, vbR = 1.0;// coordonnées texture base du toit droit

    //face arrière
    vertex(x1, 0, z1, ubL, vb);   
    vertex(x2, 0, z2, ubR, vbR);  
    vertex(ax, ay, az, ua, va);   

    //face droite
    vertex(x2, 0, z2, ubL, vb);  
    vertex(x3, 0, z3, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    //face avant
    vertex(x3, 0, z3, ubL, vb);
    vertex(x4, 0, z4, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    //face gauche
    vertex(x4, 0, z4, ubL, vb);
    vertex(x1, 0, z1, ubR, vbR);
    vertex(ax, ay, az, ua, va);

    endShape();
    popMatrix();
// si pas de toit trianfulaire on fait une marche de gardes plate
  }else {
      pushMatrix();
      translate(0, -hTour + cube_height, 0); //on se place pas tout à fait au sommet histoire que les garades ne tombent pas de la tour
      textureMode(NORMAL);
      beginShape(QUADS);
      
      texture(cube_texture); 
  //création d'un toit plat
      vertex(-mid, 0, -mid, 0, 0); 
      vertex( mid, 0, -mid, 1, 0); 
      vertex( mid, 0,  mid, 1, 1); 
      vertex(-mid, 0,  mid, 0, 1); 

      endShape();
      popMatrix();
    }

    popMatrix(); //pop du pushMatrix global de la tour
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