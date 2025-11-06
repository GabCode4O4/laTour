float cube_width = 4.f;
float cube_height = 2.f;
float cube_length = cube_width;
int nb_cube_width = 10;
int nb_cube_height = 6;
float theta = radians(90.0f);
float dist = 50 * cube_width;
float tour_width = cube_width * (1+nb_cube_width);

float wall_width = nb_cube_width * cube_width;
float wall_height = nb_cube_height * cube_height;  

float hauteur_muraille = nb_cube_height*4;
float largeur_muraille = (2*dist - tour_width)/cube_width;

float master_tour_width = nb_cube_width* 3;
