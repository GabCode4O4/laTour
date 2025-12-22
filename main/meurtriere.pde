// dessine une meurtière 
void drawMeurtriere(float p_x, float p_y, float w, int h)
{
    //une meurtrière est un mur avec un trou fermé en haut et en bas
    drawWallWithTrou(p_x, p_y, w, h, meurtriere_hole, true, true, true);
}
