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
//AudioPlayer end;
AudioPlayer game;
// Se inicializan las variables de las imágenes para poder cargarlas en el draw
PImage startimage, startimage1, startimage2, fondo;
PFont font;    //variable para añadir fuente
// Inicializamos las variables de nuestro programa.
int  stage = 0;
int filas = 22; //# de filas y columnas visibles para el fondo
int columnas = 30; //
int bits = 30;
int points = 0; //variable de puntos

// Definimos la clase de botones y los creamos.

botones play = new botones(800,50,1); //Boton que reinicia las barras
botones exit = new botones(800,150,2); //Boton que une las lineas las barras con lineas
botones continuar = new botones(500,300,3); //Boton que une las lineas las barras con lineas

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
int screenHeight = 660;

// Declaración de todas las variables globales del juego 

void setup() {

  size(900, 660); // Tamaño de la pantalla
  startimage= loadImage("ALIEN.jpg");
  startimage1= loadImage("GAME OVER.jpg");
  startimage2= loadImage("continue.PNG");
  fondo= loadImage("fondo.jpg");
  minim = new Minim(this);
  player1 = minim.loadFile("ini.wav");
  game = minim.loadFile("game.wav");
  player = minim.loadFile("over.wav");
  //end = minim.loadFile("end.wav");
  posX.add (10); // posición en la que va a iniciar en X e Y
  posY.add (10);
  frameRate(7);
  appleX = (int)random(2, 28); // Posición de las manzanas aleatoria en X e Y
  appleY = (int)random(4, 20);
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
            player1.close();
     }
    }
   
    break;
  case 2 : 
    image(fondo, 0, 0, screenWidth, screenHeight);
    ellipseMode(CORNER);
    textSize(36);
    text("Score: " + points, 90, 24, 1);
    game.play();
      if (gameOver == true) {
        image(startimage1, 0, 0, screenWidth, screenHeight);
        game.close();
        player.play();
        appleX= -2;
        appleY = -2;
        posX.clear();
        posY.clear();
        posX.add(-10);
        posY.add(-10);
    } else {
      
      for (int i= 2; i < filas; i++) {    
        fill(57, 5, 95);
        rect(0, 60, 900, 30);
        rect(0, 630, 900, 30);
        }
      for (int j= 0; j < columnas; j++) { 
        fill(57, 5, 95);
        rect(0, 60, 30, 600);
        rect(870, 60, 30, 600);
        }
      }
    moove();
    comer();
    bordes();
    cuerpo();
    drawTrain();
    drawApple();
    //end.play();
    keyPressed();
    
    break;
    case 3:
        stage = 0;
    break;
  }
}

//termina la funcion draw  
