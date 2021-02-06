 void drawApple(){
  fill(215, 180 , 75);
  rect(appleX * bits, appleY * bits, bits, bits);
}
void drawTrain(){
  fill(#241D50);
  for (int i = 0; i< posX.size(); i ++){
     rect(posX.get(i), posY.get(i), 90, 50);
     
     fill(#F22055 );
     rect ( posX.get(i)+60, posY.get(i)-5, 25, 10,2);
     rect ( posX.get(i)+6, posY.get(i)-5, 25, 10,2);
     rect ( posX.get(i)+60, posY.get(i)+45, 25, 10,2);
     rect ( posX.get(i)+6, posY.get(i)+45, 25, 10,2);
     

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
  }
}
     

   void moove(){
   
   posX.add(0,posX.get(0) +dx[dire]);
   posY.add(0,posY.get(0) +dy[dire]);
   posX.remove(posX.size()-1);
   posY.remove(posY.size()-1);
   
   }
 void keyPressed(){
     if (key == 'w' ||keyCode == UP) dire = 0;
     if (key == 's' ||keyCode == DOWN) dire = 1;
     if (key == 'a' ||keyCode == LEFT) dire = 2;
     if (key == 'd' ||keyCode == RIGHT) dire = 3;
     
   }
