   void moove(){
     posX.add(0,posX.get(0) +dx[dire]);
     posY.add(0,posY.get(0) +dy[dire]);
     posX.remove(posX.size()-1);
     posY.remove(posY.size()-1);
   
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
    
    void bordes(){
     
     if ((posX.get(0) < 2) || ( posX.get(0) > columnas -3) || (posY.get(0) < 4) || ( posY.get(0) > filas-3)){         
          gameOver = true ; 
      }
     
    }
      
   void comer(){
         if(( posX.get(0) == appleX) && ( posY.get(0) == appleY)){
             appleX = (int)random(2, 28); 
             appleY = (int)random(4, 20);
             posX.add(posX.get(posX.size()-1));
             posY.add(posY.get(posY.size()-1));
             points = points+10;        
          }
   
    }
    
    void drawTrain(){
      for (int i = 0; i< posX.size(); i ++){
    fill(random(50, 200));    
         ellipse(posX.get(i)*bits, posY.get(i)*bits, bits, bits);
    fill(237, 247, 240);
         ellipse(posX.get(i)*bits+(30/4), posY.get(i)*bits+(30/4), bits/2, bits/2);
    fill (random(50, 255), 0,random(50, 255));
         ellipse(posX.get(i)*bits+4, posY.get(i)*bits+3, bits/4, bits/4);
         ellipse(posX.get(i)*bits+4, posY.get(i)*bits+21, bits/4, bits/4);
         ellipse(posX.get(i)*bits+21, posY.get(i)*bits+4, bits/4, bits/4);
         ellipse(posX.get(i)*bits+20, posY.get(i)*bits+20, bits/4, bits/4);
    fill (0,random(50, 255), random(50, 255));
         ellipse(posX.get(i)*bits+12, posY.get(i)*bits, bits/4, bits/4);
         ellipse(posX.get(i)*bits+12, posY.get(i)*bits+23, bits/4, bits/4);
         ellipse(posX.get(i)*bits, posY.get(i)*bits+(25/2), bits/4, bits/4);
         ellipse(posX.get(i)*bits+23, posY.get(i)*bits+(25/2), bits/4, bits/4);
    
        }
        
    } 
   
   void drawApple(){
    fill(75, 252 , 86);
    ellipse(appleX*bits, appleY*bits, 28, 32);
    fill(0);
    ellipse(appleX*bits+9, appleY*bits+24, 10, 3);
    fill(255);
    ellipse(appleX*bits+6, appleY*bits+6, 6, 12);
    ellipse(appleX*bits+17, appleY*bits+6, 6, 12);
    }

   void restaurar(){
    gameOver = false;
    posX.clear();
    posY.clear();
    posX.add(10);
    posY.add(10);
    appleX = (int)random(2, 28); 
    appleY = (int)random(4, 20);
    points = 0;
    player.play();
        
    }

   void keyPressed(){
     if (key == 'w' ||keyCode == UP) dire = 0;
     if (key == 's' ||keyCode == DOWN) dire = 1;
     if (key == 'a' ||keyCode == LEFT) dire = 2;
     if (key == 'd' ||keyCode == RIGHT) dire = 3;
      if ( key == ' '){
       restaurar();
       player.close();
       
      } 
      if ( key == 'p'||key == 'P'){
        stage = 3;
      }  
    }
