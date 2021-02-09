   void moove(){
   
     posX.add(0,posX.get(0) +dx[dire]);
     posY.add(0,posY.get(0) +dy[dire]);
     posX.remove(posX.size()-1);
     posY.remove(posY.size()-1);
   
   }
 void drawTrain(){
    fill(#241D50);
      for (int i = 0; i< posX.size(); i ++){
         rect(posX.get(i)*bits, posY.get(i)*bits, bits+30, bits+10);
         /*
      
         
    
         // Diseño del chásis y luces 
         fill(50);
         rect ( posX.get(i)+60, posY.get(i)+5, 20, 38,3);
         fill(#DBFA14);
         ellipse( posX.get(i)+68, posY.get(i)+15, 15, 15);
         ellipse( posX.get(i)+68, posY.get(i)+35, 15, 15);
         fill(120);
         stroke(6);
         line(posX.get(i)+56, posY.get(i)+3,posX.get(i)+10, posY.get(i)+25);
      
         line(posX.get(i)+56, posY.get(i)+43,posX.get(i)+10, posY.get(i)+25);
         */
  
  
  fill(#0B425F );
         rect ( posX.get(i)*bits-5, posY.get(i)*bits, 25, 10,10);
         rect ( posX.get(i)*bits+44, posY.get(i)*bits, 25, 10,10);
         rect ( posX.get(i)*bits+44, posY.get(i)*bits+40, 25, 10,10);
         rect ( posX.get(i)*bits-5, posY.get(i)*bits+40, 25, 10,10);
         fill(100,200);
         rect ( posX.get(i)*bits+23, posY.get(i)*bits+5, 20, 30);
         fill(random(0,256));
         ellipse( posX.get(i)*bits+30, posY.get(i)*bits+15, 10, 12);
         ellipse( posX.get(i)*bits+30, posY.get(i)*bits+32, 10, 12);
    
}
 }
      void comer(){
         if(( posX.get(0) == appleX) && ( posY.get(0) == appleY)){
             appleX = (int)random(0, 25); 
             appleY = (int)random(0, 25);
             posX.add(posX.get(posX.size()-1));
             posY.add(posY.get(posY.size()-1));
   }
   
   }
   
 void drawApple(){
    fill(215, 180 , 75);
    rect(appleX * bits, appleY * bits, 50+bits, 10+bits);
}



 void keyPressed(){
     if (key == 'w' ||keyCode == UP) dire = 0;
     if (key == 's' ||keyCode == DOWN) dire = 1;
     if (key == 'a' ||keyCode == LEFT) dire = 2;
     if (key == 'd' ||keyCode == RIGHT) dire = 3;
     
   }
