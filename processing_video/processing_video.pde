//ejemplo arduino -processing 
//desarrollado para MAKE IT YOURSELF
//EL DOMINIO DE  ESTE CODIGO ES PUBLICO
//https://www.youtube.com/channel/UCHg3JIxqWzUwOqWyEFcOVcA
import processing.video.*;
import processing.serial.*;

Serial puerto;
int n=1; 
float[] data = new float[n];
Movie mov;
void setup() {
  size(640, 460);
  background(0);
   puerto = new Serial(this, "COM12", 9600);
puerto.bufferUntil('\n');
  mov = new Movie(this, "Mi video5.mp4");
 
  mov.loop();
}

void movieEvent(Movie movie) {
  mov.read();  
}

void draw() {    
  image(mov, 0, 0);
    
  float nvel = map(data[0], 0, width, 0.1, 2);
  mov.speed(nvel);
  
  fill(255);
  text(nfc(nvel, 2) + "X", 10, 30); 
}

void serialEvent(Serial puerto) {
  String bufString = puerto.readString();
  data = float(split(bufString, ','));
}