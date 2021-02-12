import ddf.minim.*;
Minim minim;
AudioPlayer player;

PFont font;    //variable para añadir fuente
int filas = 30;
int columnas = 30;
int bits = 30;
int points = 0;
 
  ArrayList<Integer> posX = new ArrayList<Integer> ();
  ArrayList<Integer> posY = new ArrayList<Integer> ();
  
    int dire= 1;
    int[] dx = {0, 0, -1, 1};
    int[] dy = {-1, 1,0, 0};
    
    int appleX;
    int appleY;


      boolean gameOver = false;

// Declaración de todas las variables globales del juego 

void setup(){
  minim = new Minim(this);
  player = minim.loadFile("audio.mp3");
  size(800, 1000); // Tamaño de la pantalla
  font = loadFont("Cambria-Italic-48.vlw");  //cargamos la fuente a la variable
  textFont(font);  //definimos la fuente a usar
  posX.add (10); // posición en la que va a iniciar en Xe Y
  posY.add (10);
  frameRate(8);
  appleX = (int)random(0, 25); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 25);

}
// Termina la función setup.

void draw() {
  background(25);
  ellipseMode(CORNER);
  textSize(30);
  text("Score: " + points, 30, 30, 1);
  
  if (gameOver == true){
    fill(195);
    textSize(20);
    text("Press space for PLAY AGAIN", 400, height/2);
    appleX= -2;
    appleY = -2;
    posX.clear();
    posY.clear();
    posX.add(-10);
    posY.add(-10);
    
    
  }
  else{
  stroke(50);
  for (int i= 0; i < filas; i++){
    
    line(0,i*bits,width, i*bits);
  }
  for (int j= 0; j < columnas; j++){
    
    line(j*bits,0,j*bits , height);
  }
    
}
      moove();
      comer();
      bordes();
      cuerpo();
      drawTrain();
      drawApple();
      keyPressed();
      
}
    
