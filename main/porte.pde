void drawPorte(float p_x, float p_y, float w, float h)
{
    drawPorte(p_x, p_y, w, h, door_hole_width, false);
}

void drawPorte(float p_x, float p_y, float w, float h, float hole_width)
{
    drawPorte(p_x, p_y, w, h, hole_width, false);
}

void drawPorte(float p_x, float p_y, float w, float h, float hole_width, boolean needCentrage)
{
    // Une porte est un mur avec un trou, ouvert en haut et en bas, needCentrage indique si on centre le trou notamment pour les tours
       drawWallWithTrou(p_x, p_y, w, h, hole_width, false, false, needCentrage);
}