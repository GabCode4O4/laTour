

void drawPorte(float p_x, float p_y, int w, int h)
{
    float shift = (w/2+2) * cube_width;
    drawWall(p_x,p_y,w/2-1,h);
    drawWall(p_x+shift,p_y,w/2-1,h);
}