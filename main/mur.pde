/*w = largeur en cube
h = hauteur en cube
*/

void drawWall(float p_x, float p_y, float p_w, float p_h)
{
    int h = floor(p_h);
    float dy = p_y;
    for (int y = 0; y < h; y++)
    {        
        boolean odd = (y%2) == 1;
        drawWallRaw(p_x,dy,p_w,odd);
        dy+= cube_height;
    }
}

void drawWallRaw(float p_x, float p_y, float p_w, boolean half)
{
    int w = floor(p_w);
    float additional_width = (p_w-w)*cube_width/2;
    int nbCubes = half? w+1 : w;
    float dx = p_x;
    float dy = p_y;
    float brick_width = 0.f;
    for (int x = 0; x < nbCubes; x++)
    {
        if(x == 0 || x == nbCubes-1){
            brick_width = cube_width + additional_width;
            if (half) {
                brick_width= cube_width/2 + additional_width;
            }
        } else {
            brick_width = cube_width;
        }
        drawCube(dx, dy,0.f, brick_width, cube_height, cube_length);
        dx+=brick_width;
    }

}

void drawWall_inverse(float p_x, float p_y, float p_w, float p_h) {
    float dy = p_y;
    int h = floor(p_h);

    for (int y = 0; y < h; y++)
    {        
        boolean odd = (y%2) == 1;
        drawWallRaw(p_x,dy,p_w,!odd);
        dy+= cube_height;
    }
}

void drawWall(float p_x, float p_y, float w, float h, boolean inverse_order)
{
    if (inverse_order)
        drawWall_inverse(p_x,p_y,w,h);
    else
        drawWall(p_x,p_y,w,h);
}
