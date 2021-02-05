PImage[] img = new PImage[0];
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


      boolean gameOver = true;

// Declaración de todas las variables globales del juego 

void setup(){
  size(1000, 1000); // Tamaño de la pantalla
  posX.add (15); // posición en la que va a iniciar en Xe Y
  posY.add (15);
  appleX = (int)random(0, 50); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 50);
  img[0] = loadImage("imagens/t0.png");
}
// Termina la función setup.

void draw() {
  background(35);
  if (gameOver == false){
    // Texto de iniciar
    image(img[0], 0,0);
  }
  else{
  stroke(50);
  for (int i= 0; i < filas; i++){
    
    line(0,i*bits,width, i*bits);
  }
  for (int j= 0; j < filas; j++){
    
    line(j*bits,0,j*bits , width);
  }
  
}


}
