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

}
// Termina la función setup.

void draw() {
  background(45);
  if (gameOver == true){
    // Texto de iniciar
  }
  else{
  stroke(50);
  for (int  0; i < filas, i++){
  }
  
}
}
