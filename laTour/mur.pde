
/*w = largeur en cube
h = hauteur en cube
*/

void drawWall(float p_x, float p_y, float p_w, int h)
{
    float shift = 0.f;
    int w = (int)p_w;
    for (int y = 0; y < h; y++)
    {        
        shift = 0.f;
        for (int x = 0; x < w+ y%2; x++)
        {

            if ((y%2 == 1) && (x == 0 || x == w) )
            {
                drawCube(p_x + (shift) * cube_width - cube_width/4, p_y + y*cube_height, 0.f, cube_width/2, cube_height, cube_width);
                shift+=0.5f;
            }
            else {
                drawCube(p_x + (shift) * cube_width, p_y + y*cube_height, 0.f, cube_width, cube_height, cube_width);
                shift+=1f;
            }
                
        }
        
        float last_cube_width = p_w - w;
        if (last_cube_width > 0.f)
            drawCube(p_x + (shift) * cube_width, p_y + y*cube_height, 0.f, last_cube_width, cube_height, cube_width);

    }
}

void drawWall_inverse(float p_x, float p_y, float p_w, int h)
{
    float shift = 0.f;
    int w = (int)p_w;
    for (int y = 0; y < h; y++)
    {        
        shift = 0.f;
        for (int x = 0; x < w + (y+1)%2; x++)
        {
            if ((y%2 == 0) && (x == 0 || x == w) )
            {
                drawCube(p_x + (shift) * cube_width - cube_width/4, p_y + y*cube_height, 0.f, cube_width/2, cube_height, cube_width);
                shift+=0.5f;
            }
            else {
                drawCube(p_x + (shift) * cube_width, p_y + y*cube_height, 0.f, cube_width, cube_height, cube_width);
                shift+=1f;
            }
            
        }
        float last_cube_width = p_w - w;
        if (last_cube_width > 0.f)
            drawCube(p_x + (shift) * cube_width, p_y + y*cube_height, 0.f, last_cube_width, cube_height, cube_width);

    }
}

void drawWall(float p_x, float p_y, float w, int h, boolean inverse_order)
{
    if (inverse_order)
        drawWall_inverse(p_x,p_y,w,h);
    else
        drawWall(p_x,p_y,w,h);
}
