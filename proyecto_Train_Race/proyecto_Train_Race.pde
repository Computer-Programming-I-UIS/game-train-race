/* Autores: Harvey Carreño - 2192281
            Kenneth Rincón- 2192287
   Juego: Alien Race
   Descripción: Basado en el clásico juego de snake este código construye una versión  graficamente diferente y con algunas características extras. 
Creditos al canal de youtube "Air Room" ya que con ayuda de su contenido pudimos recopilar información y funciones que posteriormente usamos en el juego.
*/


// Se importa la librería minim y se crean las variables para utilizarlas
import ddf.minim.*;
Minim minim;
AudioPlayer player;
AudioPlayer player1;
// Se inicializan las variables de las imágenes para poder cargarlas en el draw
PImage startimage, startimage1, startimage2, fondo;
PFont font;    //variable para añadir fuente
// Inicializamos las variables de nuestro programa.
int  stage = 0;
int filas = 35; //# de filas y columnas visibles para el fondo
int columnas = 40; //
int bits = 30;
int points = 0; //variable de puntos

// Definimos la clase de botones y los creamos.

botones play = new botones(800,50,1); //Boton que reinicia las barras
botones exit = new botones(800,150,2); //Boton que une las lineas las barras con lineas
botones continuar = new botones(500,500,3); //Boton que une las lineas las barras con lineas

// Se hace un array de vectors con las posiciones de nuestro alien

ArrayList<Integer> posX = new ArrayList<Integer> ();
ArrayList<Integer> posY = new ArrayList<Integer> ();
// Se crean las variables dirección para usarlas en el movimiento
int dire= 1;
int[] dx = {0, 0, -1, 1};
int[] dy = {-1, 1, 0, 0};
// creo las variables de el alien(la comida).
int appleX;
int appleY;
// Se hace un boolean para saber cuando se va  a matar la nave y cuando volver a empezar.
boolean gameOver = false;
// ancho y alto de nuestro fondo, para que las imágenes queden en el fondo completo
int screenWidth = 900;
int screenHeight = 1000;

// Declaración de todas las variables globales del juego 

void setup() {

  size(900, 1000); // Tamaño de la pantalla
  startimage= loadImage("ALIEN.jpg");
  startimage1= loadImage("GAME OVER.jpg");
  startimage2= loadImage("continue.PNG");
  fondo= loadImage("fondo.jpg");
  minim = new Minim(this);
  player = minim.loadFile("final.wav");
  player1 = minim.loadFile("intro.wav");
  posX.add (10); // posición en la que va a iniciar en Xe Y
  posY.add (10);
  frameRate(8);
  appleX = (int)random(0, 25); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(0, 20);
}
// Termina la función setup.


//Inicio de la función Draw donde se mostrará todo en pantalla ya que esto nos muestra
// 60 fps. Cargó todas las imágenes y sonidos que inicialicé al principio
void draw() {
  

  switch(stage) {
  case 0 : 
    
    image(startimage, 0, 0, screenWidth, screenHeight);
     player1.play(); 

     play.display();  // Muestra y Verifica si se esta presionando el boton play
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
     image(startimage2, 0, 0, screenWidth, screenHeight);
     continuar.display();
    if(mousePressed){   //Solo modificara las barras cuando presionen el mouse 
   
    if(continuar.ejecutar()){       //Si hace click en reset 
            stage = 2;
    }
    }
   
    break;
  case 2 : 
    image(fondo, 0, 0, screenWidth, screenHeight);
    ellipseMode(CORNER);
    textSize(30);
    text("Score: " + points, 80, 30, 1);
    if (gameOver == true) {
      image(startimage1, 0, 0, screenWidth, screenHeight);
      player.play();
      appleX= -2;
      appleY = -2;
      posX.clear();
      posY.clear();
      posX.add(-10);
      posY.add(-10);
     /*
    } else {
      
      for (int i= 0; i < filas; i++) {    
        line(0, i*bits, width, i*bits);
      }
      for (int j= 0; j < columnas; j++) { 
        line(j*bits, 0, j*bits, height);
      }
      */
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
