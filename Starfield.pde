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
