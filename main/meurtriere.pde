
/*
p_x, p_y => en world position
w = largeur en cube
h = hauteur en cube
*/

// dessine une meurtière 

void drawMeurtriere(float p_x, float p_y, float w, int h)
{

    float shift = (w+meurtriere_hole)/2 * cube_width;
    float wall_width = (w-meurtriere_hole)/2;
    drawWall(p_x,p_y, wall_width ,h);
    drawWall(p_x+shift, p_y, wall_width, h, false);
}
