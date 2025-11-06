
/*
p_x, p_y => en world position
w = largeur en cube
h = hauteur en cube
*/

// bon elle est pas ouf pour le moment mais c'est mieux que rien donc t'inquiete c'est juste pour les test 

void drawMeurtriere(float p_x, float p_y, float w, int h)
{
    float hole_size = 0.5f;
    float shift = (w+hole_size)/2 * cube_width;
    float wall_width = (w-hole_size)/2;
    drawWall(p_x,p_y, wall_width ,h);
    drawWall(p_x+shift, p_y, wall_width, h, false);
}
