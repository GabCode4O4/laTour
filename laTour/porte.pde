

void drawPorte(float p_x, float p_y, float w, float h)
{
    float hole_size = 2.f ;
    float shift = (w/2+hole_size) * cube_width;
    drawWall(p_x,p_y,w/2-1,h);
    drawWall(p_x+shift, p_y, w/2-hole_size, h);
}