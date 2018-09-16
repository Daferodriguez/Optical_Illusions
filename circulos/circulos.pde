int[] circles;
int lastDiameter;
boolean firstTime;
int spacing;

void setup(){
  size(700,700);
  spacing = 50;
  circles = new int[100];
  int foo = 0;
  while(foo <= circles.length - 1){
    circles[foo] = width + (foo * spacing/3);
    foo++;
  }
}

void draw(){
  background(255);
  strokeWeight(2);
  noFill();
  int arrayItemOn = 0;
  
  int salto = 5;
  int cont = 0;
  stroke(50);
  while(cont < height){
    line(0, cont, width, cont);
    cont += salto;
  }
  stroke(0);
  while(arrayItemOn <= circles.length - 1){
    int diameter = circles[arrayItemOn];
    if(diameter <= 0){
      circles[arrayItemOn] = lastDiameter + spacing/3;
      diameter = lastDiameter + spacing/2;
    }
    else{
      circles[arrayItemOn] -= 5;
    }
    ellipse(3*width/4,3*height/4,diameter,diameter);
    ellipse(width/4,3*height/4,diameter,diameter);
    ellipse(width/2,height/4,diameter,diameter);
    if(arrayItemOn == circles.length - 1){
      firstTime = true;
    }
    lastDiameter = diameter;
    arrayItemOn++;
  }
}
