import processing.sound.*; //Sound

QueasyCam cam ;
Chateau chateau;
SoundFile chateauMusic; //Sound

//Pour le correcteur du projet:
/* Pour activer la librairie Sound Sketch -> Importer une bibliothèque -> Ajouter une bibliothèque...
   Chercher "Sound" et l'installer.
   Sinon retiré les lignes en rapport avec le son marqué par un commentaire //Sound
*/

void setup() {
  size(1280, 720, P3D);
  frameRate(60);
  chateauMusic = new SoundFile(this, "./music/chateau.mp3"); //Sound
  cam = new QueasyCam(this);
  cam.position.x = 0;
  cam.position.y = -10;
  cam.position.z = 500; 
  cube_texture = loadImage("./img/mur.jpg");
  sol_texture = loadImage("./img/herbe.jpg");
  toit_texture = loadImage("./img/toit.jpg");
  chateau = new Chateau(0,0,0,dist_tour);
  chateauMusic.loop();//Sound
  
}

void draw() { 
  
  background(99, 188, 227);
  lights();
  chateau.afficher();


}
