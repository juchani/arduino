//ejemplo arduino -processing 
//desarrollado para MAKE IT YOURSELF
//EL DOMINIO DE  ESTE CODIGO ES PUBLICO
void setup() {
  pinMode(12,INPUT_PULLUP);
  Serial.begin(9600);
}

void loop() {
  Serial.println(digitalRead(12));
}

