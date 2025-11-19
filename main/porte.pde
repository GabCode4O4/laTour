

void drawPorte(float p_x, float p_y, float w, float h)
{
    
    float shift = (w+door_hole_width)/2 * cube_width;
    float wall_width = (w-door_hole_width)/2;

    drawWall(p_x,p_y, wall_width,h);
    drawWall(p_x+shift, p_y, wall_width, h);
}