int[] circles;
int lastDiameter;
boolean firstTime;
int spacing;

void setup(){
  size(400,400);
}

void draw(){
  int diametro = 50;
  int init = width/5;
  int stop = 4*width/5;
  int count = 0;
  
  
  int ycount = 0;
  int yinit = diametro;
  int ystop = height - diametro;
  
  int bandera = 0;
  for(ycount = yinit; ycount < ystop; ycount += diametro){
    if(bandera % 2 == 0){
      for(count = init; count < stop; count+=10){
        ellipse(count,ycount,diametro,diametro);
      }
    }else{
      for(count = stop; count > init; count-=10){
        ellipse(count,ycount,diametro,diametro);
      }
    }
    bandera ++;
  }


}
