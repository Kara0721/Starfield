class Particle{
 private double myX, myY, mySpeed, myColor,myAngle;
 public double getX(){return myX;}
 public double getY(){return myY;}
 public double getSpeed(){return mySpeed;}
 public double getColor(){return myColor;}
 public double getAngle(){return myAngle;}
 public void setX(double x){ myX = x;}
 public void setY(double y){ myY=y;}
 public void setSpeed(double speed){ mySpeed = speed;}
 public void setColor(double colors){ myColor=colors;}
 public void setAngle(double angle){ myAngle=angle;}
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
   if (myX <= -300 || myX >= 900 || myY <= -300 || myY >= 900){
    myX = myY = 300; 
   }
 }
 public void show(){
   fill ((int)myColor);
      rect ((int)myX,(int)myY, 2,5);
 } 
}//end of particle class
