PImage img ;
int filas = 50;
int columnas = 50;
int bits = 20;
float xpos,ypos;
  Boolean d = true;
  Boolean w= false;
  Boolean s= true;

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
  size(800, 800); // Tamaño de la pantalla
  posX.add (10); // posición en la que va a iniciar en Xe Y
  posY.add (10);
  appleX = (int)random(0, 40); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 40);
   img = loadImage("t0.png");
  img.resize(85, 85);
}
// Termina la función setup.

void draw() {
  background(25);
  
  if (gameOver == true){
    // Texto de iniciar
    
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
      drawApple();
      drawTrain();
      moove();
      keyPressed();
      
}
    
