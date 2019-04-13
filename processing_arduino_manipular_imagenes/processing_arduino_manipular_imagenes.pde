import processing.serial.*;
Serial puerto;
PImage imagen1,imagen2;
int n=1;
float[] data= new float[n];
void setup(){
size(640,460);
background(0);
puerto= new Serial(this,"COM12",9600);
puerto.bufferUntil('\n');
imagen1=loadImage("1.png");
imagen2=loadImage("2.png");
imagen1.resize(640,460);
imagen2.resize(640,460);
}
void draw(){
  if (data[0]<500){
  
image(imagen1,0,0);
  }
  else{
  image(imagen2,0,0);
  }
}
void serialEvent(Serial puerto){
String a =puerto.readString();
data=float(split(a,','));
println(data[0]);
}