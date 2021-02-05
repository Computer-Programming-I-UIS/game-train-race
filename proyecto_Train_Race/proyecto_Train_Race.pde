PImage img ;
int filas = 50;
int columnas = 50;
int bits = 20;
float xpos,ypos;

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
}
    
void drawApple(){
  fill(215, 180 , 75);
  rect(appleX * bits, appleY * bits, bits, bits);
}
void drawTrain(){

     fill(#F22055 );
     rect ( appleX + 100 , appleY +18, 25, 10,2);
     rect ( appleX +18 , appleY + 65, 25, 10,2);
     rect ( appleX +100 , appleY + 65, 25, 10,2);
     rect ( appleX +18  , appleY +16, 25, 10,2);
     
     
     fill(#241D50);
     rect(appleX+20, appleY+20, 90, 50, 5);
      
     fill(50);
     rect ( appleX + 80, appleY+25, 20, 40, 2);
     fill(#DBFA14);
     ellipse(appleX+90, appleY+35, 15, 15);
     ellipse(appleX+90, appleY+55, 15, 15);
     fill(120);
     stroke(6);
     line(appleX+30, appleY + 30, appleX+ 70, appleY+43);
     line(appleX+ 70, appleY+43, appleX+30, appleY+60);
  } 
   
