class botones{ //crea los botones
 int x;//centro en x
 int y; //centro en y
 int palabra;  //segun el numero es una palabra distinta (reset)--1 (unir)--2 
 //CONSTRUCTOR
  botones(int x_, int y_, int palabra_){
     x=x_;
     y=y_;
     palabra=palabra_;
          
  }
  
  void display(){
    fill(int(random(80,200)));
    ellipseMode(CENTER); //color blanco a 
    ellipse(x,y,80,40);  //todos los botones tienen el mismo tamaño y diferente posicion
    fill(0,0,0);    //color negro al texto
    textAlign(CENTER, CENTER); //texto encimadel boton
    textSize(20); 
    switch(palabra){ //segun la letra recibida por el constructor, se 
      
      case 1:
      fill(#F72AB0);
      textSize(15);
      text("Play",x,y);
      break;
      case 2:
      fill(#F72AB0);
      textSize(15);
      text("Exit",x,y);
      break;
      case 3:
      fill(#D3C011);
      textSize(15);
      stroke(15);
       text("Continue",x,y);
      
    }
    
    
    
  }
  boolean ejecutar(){ //verifica que el boton este en el rango del boton
  if(mouseX<=x+90 && mouseX>x-90 && mouseY>=y-30 && mouseY <= y + 30
 ) return true;
  
  else return false;
   
  }  
 
}
