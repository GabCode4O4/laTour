/*w = largeur en cube
h = hauteur en cube
*/
//Dessine un mur complet en empilant des lignes de briques
//Gère la hauteur et l'alternance des lignes (paire/impaire) pour le motif
void drawWall(float p_x, float p_y, float p_w, float p_h)
{
    int h = floor(p_h); // Hauteur entière du mur
    float dy = p_y; 
    for (int y = 0; y < h; y++)
    {        
        boolean odd = (y%2) == 1; // Détermine si la rangée est impaire pour alterner le motif
        drawWallRaw(p_x,dy,p_w,odd);
        dy-= cube_height;
    }
}
// Dessine une seule ligne horizontale de cubes
//gère la largeur et le placement des demi briques aux extrémités si half est vrai
void drawWallRaw(float p_x, float p_y, float p_w, boolean half)
{
    int w = floor(p_w); //Largeur du mur
    float additional_width = (p_w-w)*cube_width/2; //largeur a répartir sur les bords si p_w n'est pas entier
    int nbCubes = half? w+1 : w; //Nombre total de briques a dessiner sur la ligne
    float dx = p_x; 
    float dy = p_y;
    float brick_width = 0.f;
    for (int x = 0; x < nbCubes; x++)
    {
        if(x == 0 || x == nbCubes-1){
            brick_width = cube_width + additional_width;
            if (half) {
                brick_width= cube_width/2 + additional_width;
            }
        } else {
            brick_width = cube_width;
        }
        drawCube(dx, dy,0.f, brick_width, cube_height, cube_length,cube_texture);
        dx+=brick_width;
    }

}

// Dessine un mur en inversant l'alternance des briques (commence par une demi-brique au lieu d'une entière).
void drawWall_inverse(float p_x, float p_y, float p_w, float p_h) {
    float dy = p_y;
    int h = floor(p_h);

    for (int y = 0; y < h; y++)
    {        
        boolean odd = (y%2) == 1;
        drawWallRaw(p_x,dy,p_w,!odd);
        dy-= cube_height;
    }
}
// Surcharge de drawWall pour choisir l'ordre des briques
void drawWall(float p_x, float p_y, float w, float h, boolean inverse_order)
{
    if (inverse_order)
        drawWall_inverse(p_x,p_y,w,h);
    else
        drawWall(p_x,p_y,w,h);
}

// Dessine un mur avec un trou pour porte et meurtrière
//needCentrage: si vrai, centre le trou sur w-1 utilisé que pour les tours
void drawWallWithTrou(float p_x, float p_y, float w, float h, float trou_width, boolean topClosed, boolean bottomClosed, boolean needCentrage) {
    float dy = p_y;
    int h_int = floor(h);
    
    // Calcul des largeurs
    float logical_w = needCentrage ? w - 1 : w;
    float left_width = (logical_w - trou_width)/2;
    float right_width = w - left_width - trou_width;
    float shift = (left_width + trou_width) * cube_width;

    for (int y = 0; y < h_int; y++) {
        boolean odd = (y%2) == 1;
        
        boolean isTop = (y == 0); //ligne du haut
        boolean isBottom = (y == h_int - 1);//ligne du bas
        
        // On ferme si c'est demandé pour le haut et bas
        //On vérifi aussi que la hauteur est suffisante pour avoir un trou au milieu si on ferme en haut et en bas
        boolean isFullRow = (isTop && topClosed) || (isBottom && bottomClosed);
        
        //si h < 3 et qu'on demande fermé haut et bas, on ne ferme pas tout sinon y'a plus de trou
        if (h_int < 3 && topClosed && bottomClosed) {
             isFullRow = false; 
        }
        //Dessin de la ligne si nécessaire
        if (isFullRow) {
            drawWallRaw(p_x, dy, w, odd);
        } else {
            //sinon on dessine les deux parties du mur avec le trou au milieu ligne par ligne pour pouvoir faire les vérification du dessus à chaque fois
            drawWallRaw(p_x, dy, left_width, odd);
            drawWallRaw(p_x + shift, dy, right_width, odd);
        }
        dy -= cube_height; //Monte d'une ligne
    }
}
