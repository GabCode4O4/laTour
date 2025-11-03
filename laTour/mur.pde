float cube_width = 4.f;
float cube_height = 2.f;


void drawCube(float x, float y, float z, float w, float h, float l)
{
  pushMatrix();
  fill(200);
  stroke(0);
  strokeWeight(2);
  translate(x,y,z);
  box(w, h, l);
  popMatrix();
}

void drawWall(int w, int h)
{
    float shift = 0.f;
    for (int y = 0; y < h; y++)
    {        
        shift = 0.f;
        for (int x = 0; x < w+ y%2; x++)
        {

            if ((y%2 == 1) && (x == 0 || x == w) )
            {
                drawCube((shift) * cube_width - cube_width/4, y*cube_height, 0.f, cube_width/2, cube_height, cube_width);
                shift+=0.5f;
            }
            else {
                drawCube((shift) * cube_width, y*cube_height, 0.f, cube_width, cube_height, cube_width);
                shift+=1f;
            }
                
        }

    }
}