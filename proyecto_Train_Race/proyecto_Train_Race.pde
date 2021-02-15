import ddf.minim.*;

AudioPlayer player;
PImage startimage;
PFont font;    //variable para añadir fuente
int  stage = 0;
int filas = 40; //30 visibles
int columnas = 40; //22.5 visibles
int bits = 30;
int points = 0; //variable de puntos
PImage title;



botones play = new botones(720-50,50,1); //Boton que reinicia las barras
botones exit = new botones(720-150,50,2); //Boton que une las lineas las barras con lineas
botones continuar = new botones(720-250,50,3); //Boton que une las lineas las barras con lineas


ArrayList<Integer> posX = new ArrayList<Integer> ();
ArrayList<Integer> posY = new ArrayList<Integer> ();

int dire= 1;
int[] dx = {0, 0, -1, 1};
int[] dy = {-1, 1, 0, 0};

int appleX;
int appleY;

boolean gameOver = false;

// Declaración de todas las variables globales del juego 

void setup() {

  size(900, 1000); // Tamaño de la pantalla
  startimage= loadImage("juego alien.jpg");

  /*title = createFont( "font", 900,true);
   
   
   font = loadFont("Cambria-Italic-48.vlw");  //cargamos la fuente a la variable
   
   textFont(font);  //definimos la fuente a usar
   */  posX.add (10); // posición en la que va a iniciar en Xe Y
  posY.add (10);
  frameRate(8);
  appleX = (int)random(0, 25); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 20);
}
// Termina la función setup.

void draw() {
  

  switch(stage) {
  case 0 : 
    image(startimage, 0, 0, bits*40, height);
     textAlign(CENTER);
     text("ALIENCE RACE",500,400);
     text("",500,420);
     play.display();  // Muestra y Verifica si se esta presionando el boton de restet
     exit.display(); 
     
    if(mousePressed){   //Solo modificara las barras cuando presionen el mouse 
   
    if(play.ejecutar()){       //Si hace click en reset 
            stage = 1;
    }
    if(exit.ejecutar()){       //Si hace click en reset 
            exit();
    }
    
    
    
     }
    break;
    case 1:
     background(155);
     continuar.display();
    if(mousePressed){   //Solo modificara las barras cuando presionen el mouse 
   
    if(continuar.ejecutar()){       //Si hace click en reset 
            stage = 2;
    }
    }
   
    break;
  case 2 : 
    background(25);
    ellipseMode(CORNER);
    textSize(30);
    text("Score: " + points, 30, 30, 1);
    if (gameOver == true) {
      fill(195);
      textSize(25);
      text("Press space for PLAY AGAIN", 400, height/2);
      appleX= -2;
      appleY = -2;
      posX.clear();
      posY.clear();
      posX.add(-10);
      posY.add(-10);
    } else {
      stroke(50);
      for (int i= 0; i < filas; i++) {    
        line(0, i*bits, width, i*bits);
      }
      for (int j= 0; j < columnas; j++) { 
        line(j*bits, 0, j*bits, height);
      }
    }
    moove();
    comer();
    bordes();
    cuerpo();
    drawTrain();
    drawApple();
    keyPressed();
    break;
    case 3:
    
    
    
    
    break;
  }
}

//termina la funcion draw  
