QueasyCam cam ;
Chateau chateau;


void setup() {
  size(1280, 720, P3D);
    frameRate(60);
  cam = new QueasyCam(this);
  cam.position.x = 0;
  cam.position.y = 0;
  cam.position.z = 100; 
  chateau = new Chateau(0,0,0);

  
}

void draw() { 
  
  background(99, 188, 227);
  lights();
  chateau.afficher();
  



}
