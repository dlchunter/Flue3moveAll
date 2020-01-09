ArrayList<Flue> flueListe = new ArrayList<Flue>();
ArrayList<storFlue> flueStorListe = new ArrayList<storFlue>();

void setup(){
  size(500,500);
}

void draw(){
  for(int i=0; i<flueListe.size(); i++){
    Flue f = flueListe.get(i);
    f.tegnFlue();
    f.flyt();
  }
    for(int i=0; i<flueStorListe.size(); i++){
    storFlue f = flueStorListe.get(i);
    f.tegnstorFlue();
    f.flyt();
  }
}
   
void keyPressed(){
     if (key == 'e' || key == 'E') {
       flueStorListe.add(new storFlue());
   }
   if (key == 'w' || key == 'W') {
  flueListe.add(new Flue());
   }
}

void mousePressed(){
  flueListe.add(new Flue(mouseX, mouseY));
}


/////////////////////////////////////////////////////////
class storFlue {
    
  float positionX2,positionY2;
  float distanceFlyttet2;
  float vinkel2 = 0; 
  float scale2;
  
  storFlue(){
    positionX2  = random(0,height);
    positionY2  = random(0,width);
    scale2      = random(0,20);
    vinkel2     = random(0,2*PI);
  }
  
  storFlue(float a, float b){
    positionX2 = a;
    positionY2 = b;
    vinkel2    = random(0,2*PI);
  }
  
  void flyt(){
    distanceFlyttet2 = distanceFlyttet2 + 0.5;
  }
  void tegnstorFlue(){
    pushMatrix();
      translate(positionX2,positionY2);
      rotate(vinkel2);
      scale(scale2);
      translate(distanceFlyttet2,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
         if (positionX2>500 || positionY2 > 500) {
     positionX2 = positionX2-scale2;
     positionY2 = positionY2-scale2;
   }

}

} 


class Flue{
  
  float positionX,positionY;
  float distanceFlyttet;
  float vinkel = 0; 
  float scale;
  
  Flue(){
    positionX  = random(0,height);
    positionY  = random(0,width);
    scale      = random(0,20);
    vinkel     = random(0,2*PI);
  }
  
  Flue(float a, float b){
    positionX = a;
    positionY = b;
    vinkel    = random(0,2*PI);
  }
  
  void flyt(){
    distanceFlyttet = distanceFlyttet + 0.5;
    
  }

  void tegnFlue(){
    pushMatrix();
      translate(positionX,positionY);
      rotate(vinkel);
      translate(distanceFlyttet,0);
        ellipse(0,0,20,8);
        ellipse(0,0-8,15,10);
        ellipse(0,0+8,15,10);
        ellipse(0+6,0,8,8);
    popMatrix();
  } 
}
//////////////////////////////////////////////////////
