class Oddball extends Particle{
  public Oddball(){
   setX(300);
   setY(300);
   setColor(255);
  } //end of oddball constructor
  public void move(){
    setX(mouseX);
    setY(mouseY);
  }
  public void show(){
    fill((int)getColor());
    ellipse ((int)getX(), (int)getY(), 20,20);
  }
}//end of oddball extended particle class
