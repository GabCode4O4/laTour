import processing.sound.*;

QueasyCam cam ;
Chateau chateau;
SoundFile chateauMusic;


void setup() {
  size(1280, 720, P3D);
  frameRate(60);
  chateauMusic = new SoundFile(this, "./music/chateau.mp3");
  cam = new QueasyCam(this);
  cam.position.x = 0;
  cam.position.y = -10;
  cam.position.z = 500; 
  cube_texture = loadImage("./img/mur.jpg");
  sol_texture = loadImage("./img/herbe.jpg");
  chateau = new Chateau(0,0,0);
  chateauMusic.loop();
  
}

void draw() { 
  
  background(99, 188, 227);
  lights();
  chateau.afficher();


}
