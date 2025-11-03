
/*w = largeur en cube
h = hauteur en cube
theta = angle degrés
*/

void drawWall(float p_x, float p_y, int w, int h)
{
    float shift = 0.f;
    for (int y = 0; y < h; y++)
    {        
        shift = 0.f;
        for (int x = 0; x < w+ y%2; x++)
        {

            if ((y%2 == 1) && (x == 0 || x == w) )
            {
                drawCube(p_x + (shift) * cube_width - cube_width/4, p_y + y*cube_height, 0.f, cube_width/2, cube_height, cube_width, theta);
                shift+=0.5f;
            }
            else {
                drawCube(p_x + (shift) * cube_width, p_y + y*cube_height, 0.f, cube_width, cube_height, cube_width, theta);
                shift+=1f;
            }
                
        }

    }
}