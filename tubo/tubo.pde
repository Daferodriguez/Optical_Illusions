int[] circles;
int lastDiameter;
boolean firstTime;
int spacing;

void setup(){
  size(400,400);
}

void draw(){
  int diametro = 200;
  int init = 150;
  int stop = 250;
  int count = 0;

  for(count = init; count < stop; count+=10){
    noFill();
    ellipse(count,height/2,diametro,diametro);
  }
}
