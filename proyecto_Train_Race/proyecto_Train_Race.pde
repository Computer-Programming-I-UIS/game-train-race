PImage img ;
int filas = 50;
int columnas = 50;
int bits = 20;

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
  size(850, 700); // Tamaño de la pantalla
  posX.add (15); // posición en la que va a iniciar en Xe Y
  posY.add (15);
  appleX = (int)random(0, 50); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 50);
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
}
    
void drawApple(){
  fill(215, 0 , 75);
  rect(appleX * bits, appleY * bits, bits, bits);
}
void drawTrain(){
  for (int i= 0; i < posX.size(); i++){
  image(img, width/2,height/2);
  }
}

void moove(){
  posX.add(0, posX.get(0)+dx[dire]);
  posY.add(0, posY.get(0)+dy[dire]);
}
