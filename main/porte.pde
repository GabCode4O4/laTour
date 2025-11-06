

void drawPorte(float p_x, float p_y, float w, float h)
{
    float hole_size = 2.f ;
    float shift = (w+hole_size)/2 * cube_width;
    float wall_width = (w-hole_size)/2;

    drawWall(p_x,p_y, wall_width,h);
    drawWall(p_x+shift, p_y, wall_width, h);
}