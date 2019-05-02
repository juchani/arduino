//ejemplo arduino -processing 
//desarrollado para MAKE IT YOURSELF por Juchani
//EL DOMINIO DE  ESTE CODIGO ES PUBLICO
// mas informacion en https://www.youtube.com/c/Juchani

import processing.serial.*;
Serial puerto;
int n=2;
int c;
float[] data = new float[n];
int s=100, t;
void setup() {
  puerto=new Serial(this, "COM12", 9600);// el puerto COM del arduino
  puerto.bufferUntil('\n');
  size(800, 600);
}

void draw() {
  background(0); 
  eje();
  stroke(150, 0, 0, 0);
  strokeWeight(30);
  line(s, 100, 100, 100);
  strokeWeight(25);
  stroke(255, 0, 0, 200);
  line(s, 100, 100, 100);
  text(t, s-20, 90, 100);
}



void serialEvent(Serial puerto) {
  String a=puerto.readString();
  data=float(split(a, ','));
  println(data[0]); 
  t=int(data[0]);
  s=int(map(data[0], 0, 1023, 100, 780));
  c=int(map(t, 0, 1023, 0, 255));
}