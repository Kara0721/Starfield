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
    phoenix[i].move();
    phoenix[i].show(); 
  }
}
void mousePressed(){
  redraw();
}

class Particle{
 private double myX, myY, mySpeed, myColor,myAngle;
 public double getX(){return myX;}
 public double getY(){return myY;}
 public double getSpeed(){return mySpeed;}
 public double getColor(){return myColor;}
 public double getAngle(){return myAngle;}
 public double setX(double x){return myX = x;}
 public double setY(double y){return myY=y;}
 public double setSpeed(double speed){return mySpeed = speed;}
 public double setColor(double colors){return myColor=colors;}
 public double setAngle(double angle){return myAngle=angle;}
 public Particle (){
   myX = 300;
   myY = 300;
   myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
   mySpeed = (Math.random()*8);
   myAngle = (Math.random()*2*Math.PI);
 } //end of particle constructor
 public void move (){
   myX = myX + (Math.cos(myAngle)*mySpeed);
   myY = myY + (Math.sin(myAngle)*mySpeed);
   if (myX > 700 || myY >700){
    myX = myY = 0;
   }
 }
 public void show(){
   fill ((int)myColor);
   ellipse ((int)myX, (int)myY, 10,10);
 } 
}//end of particle class
class Oddball extends Particle{
  public Oddball(){
   setX(300);
   setY(300);
   setColor(256);
   setSpeed(Math.random()*11);
   setAngle(Math.random()*2*Math.PI);
  } //end of oddball constructor
  public void move(){
    setX(mouseX);
    setY(mouseY);
  }
  public void show(){
    fill((int)getColor());
    ellipse ((int)getX(), (int)getX(), 20,20);
  }
}//end of oddball extended particle class
