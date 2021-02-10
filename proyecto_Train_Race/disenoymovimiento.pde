   void moove(){
   
     posX.add(0,posX.get(0) +dx[dire]);
     posY.add(0,posY.get(0) +dy[dire]);
     posX.remove(posX.size()-1);
     posY.remove(posY.size()-1);
   
   }
   
   void bordes(){
     
     if ((posX.get(0) < 0) || ( posX.get(0) > columnas -1) || (posY.get(0) < 0) || ( posY.get(0) > filas-1)){
         
          gameOver = true ; 
     }
     
   }
   
   void cuerpo(){
     
     for (int i = 2; i < posX.size(); i++){
       for (int j = 2; j < posY.size(); j++){
        if ((posX.get(0) == posX.get(i)) && (posY.get(0) == posY.get(j))){
           
          gameOver = true;
         
         }  
         
     
     }
     }
   }
   
 void drawTrain(){
    fill(#08356F);
      for (int i = 0; i< posX.size(); i ++){
         rect(posX.get(i)*bits, posY.get(i)*bits, bits+50, bits+10);
  
  
  fill(#9D116A );
         rect ( posX.get(i)*bits-5, posY.get(i)*bits-5, 25, 10);
         rect ( posX.get(i)*bits+60, posY.get(i)*bits-5, 25, 10);
         rect ( posX.get(i)*bits+60, posY.get(i)*bits+40, 25, 10);
         rect ( posX.get(i)*bits-5, posY.get(i)*bits+40, 25, 10);
         fill(100,200);
         rect ( posX.get(i)*bits+18, posY.get(i)*bits+5, 20, 30);
         fill(#C11F06);
         rect ( posX.get(i)*bits+58, posY.get(i)*bits+8, 10, 10);
         rect ( posX.get(i)*bits+58, posY.get(i)*bits+25, 10, 10);
         fill(random(0,256));
         ellipse( posX.get(i)*bits+30, posY.get(i)*bits+14, 10, 12);
         ellipse( posX.get(i)*bits+30, posY.get(i)*bits+30, 10, 12);
    
}
 }
      void comer(){
         if(( posX.get(0) == appleX) && ( posY.get(0) == appleY)){
             appleX = (int)random(0, 25); 
             appleY = (int)random(0, 25);
             posX.add(posX.get(posX.size()-1));
             posY.add(posY.get(posY.size()-1));
             points = points + 10;
   }
   
   }
   
 void drawApple(){
    fill(215, 180 , 75);
    rect(appleX * bits, appleY * bits, 50+bits, 10+bits);
}

  void restaurar(){
    
    gameOver = false;
    posX.clear();
    posY.clear();
    posX.add(10);
    posY.add(10);
    appleX = (int)random(0, 25); 
    appleY = (int)random(0, 25);
    
    
  }

 void keyPressed(){
     if (key == 'w' ||keyCode == UP) dire = 0;
     if (key == 's' ||keyCode == DOWN) dire = 1;
     if (key == 'a' ||keyCode == LEFT) dire = 2;
     if (key == 'd' ||keyCode == RIGHT) dire = 3;
     if ( key == ' '){
       restaurar();
     }  
   }
