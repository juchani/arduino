//ejemplo arduino -processing 
//desarrollado para MAKE IT YOURSELF
//EL DOMINIO DE  ESTE CODIGO ES PUBLICO
import processing.serial.*;
Serial puerto;
int n=1; 
float[] data = new float[n];

void setup(){
 size(900,500);
 puerto = new Serial(this, "COM12", 9600);
puerto.bufferUntil('\n');
background(0);
}

void draw(){
if(data[0]==0){
 fill(0,255,0);
ellipse(mouseX,mouseY,10,10);
}
if(data[0]==1){
 noFill();
  //fill(0,0,255);
ellipse(mouseX,mouseY,10,10);
}
 
}

void serialEvent(Serial puerto) {
  String bufString = puerto.readString();
  data = float(split(bufString, ','));
}
void keyPressed() {
  
  if (key == 'a') {
    background(0);
  } 
   if (key == 'b') {
    background(255);
  } 
  } 