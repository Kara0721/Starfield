Particle [] phoenix;
void setup (){
  size (600,600);
  phoenix = new Particle [300];
  for (int i = 0; i < phoenix.length; i++){
    phoenix[i] = new Particle();
  }
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
   mySpeed = (Math.random()*11);
   myAngle = (Math.random()*2*Math.PI);
 }
 void move (){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
 }
 void show(){
   fill ((int)myColor);
   ellipse ((int)myX, (int)myY, 10,10);
 } 
}//end of starling class


class OddballParticle //inherits from Particle
{
	//your code here
}


