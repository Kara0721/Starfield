Particle [] phoenix;
void setup (){
  size (600,600);
  phoenix = new Particle [300];
  for (int i = 0; i < phoenix.length; i++){
    phoenix[i] = new Particle();
  }
  phoenix [0] = new Oddball();
}
void draw (){
  background (0,0,0);
  for (int i = 0; i < phoenix.length; i++){
   phoenix[i].show(); 
   phoenix[i].move();
  }
}
void mousePressed(){
  redraw();
}

class Particle{
  double myX, myY, mySpeed, myColor,myAngle;
 Particle (){
   myX = 300;
   myY = 300;
   myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   mySpeed = (Math.random()*8);
   myAngle = (Math.random()*2*Math.PI);
 }
 void move (){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
   if (myX > 700 || myY >700){
    myX = myY = 0;
   }
 }
 void show(){
   fill ((int)myColor);
   ellipse ((int)myX, (int)myY, 10,10);
 } 
}//end of particle class
class Oddball extends Particle{
  Oddball(){
   myX = 300;
   myY = 300;
   myColor = color(256,256,256);
   mySpeed = (Math.random()*11);
   myAngle = (Math.random()*2*Math.PI);
  }
  void move(){
    myX = mouseX;
    myY = mouseY;
  }
  void show(){
    fill((int)myColor);
    ellipse ((int)myX, (int)myY, 20,20);
  }
}
