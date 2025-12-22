
// dimension des briques de base
float cube_width = 4.f;
float cube_height = 2.f;
float cube_length = cube_width;

// Nombre de brique par tour ( largeur + hauteur )
int nb_cube_width = 10;
int nb_cube_height = 6;

// taille des parties d'une tour en world space ( largeur + hauteur )
float wall_width = nb_cube_width * cube_width;
float wall_height = nb_cube_height * cube_height;  

// distance entre les 4 tours qui composent le chateau
float dist_tour = 30 * cube_width; // dimension en world space
int tour_etages = 7;


float hauteur_muraille = 25.f; // dimension en blocs

//taille de l'ouverture de la porte principale
float door_hole_width = 7.f;
float door_hole_height = 15.f; 

// taille de l'ouverture de la meurtrière
float meurtriere_hole = 0.5f;


// textures
PImage cube_texture;
PImage sol_texture;
PImage toit_texture;

// Pas important
float theta1 = radians(90.0f);

//Pour faire un tuple boolean et int pour la porte des tours et val est l'indice de la face sur laquelle on veut la porte
class BoolInt {
  boolean b;
  int val;
  
  BoolInt(boolean b, int val) {
    this.b = b;
    this.val = val;
  }
}


// attribut de la tour principale
int master_tour_nb_cubes = nb_cube_width * 2; //Nombre de blocs de large pour la tour principale
float master_tour_width = master_tour_nb_cubes * cube_width;
int master_tour_etages = 6;
BoolInt master_porte = new BoolInt(true, 3); //porte sur la face avant
