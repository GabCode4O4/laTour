
/*
p_x, p_y => en world position
w = largeur en cube
h = hauteur en cube
*/

// bon elle est pas ouf pour le moment mais c'est mieux que rien donc t'inquiete c'est juste pour les test 

void drawMeurtriere(float p_x, float p_y, int w, int h)
{
    float shift = (w/2+0.5f) * cube_width;
    drawWall(p_x,p_y,w/2,h);
    drawWall(p_x+shift,p_y, w/2 ,h, true);
}
