int c=0;
float d;
void setup(){
size(800,600);  
//background(0 );
//eje();

}
void draw(){
 background(0 );
eje();
stroke(255);
strokeWeight(15);
point(300,c);
point(150,c-50);
point(random(0,800),c);
point(random(0,800),c-50);
point(random(0,800),c);
point(random(0,800),c-50);
point(d,c-90);
point(random(0,800),c-50);

//delay(10);
if(c>800){
c=0;
d=random(0,800);
}
c++;
}

void eje(){
fill(255);
  text(0,5,13);
text(100,5,100);
text(200,5,200);
text(300,5,300);
text(400,5,400);
text(500,5,500);
text(600,5,595);
text(100,100,13);
text(200,200,13);
text(300,300,13);
text(400,400,13);
text(500,500,13);
text(600,600,13);
text(700,700,13);
text(800,780,13);
fill(0,255,0);
textSize(32);
text("X",780,40);
fill(255,0,0);
text("Y",30,590);
textSize(12);
fill(255);
stroke(50);
strokeWeight(2);
line(800,100,0,100);
line(800,200,0,200);
line(800,300,0,300);
line(800,400,0,400);
line(800,500,0,500);
line(800,600,0,600);
line(100,800,100,0);
line(200,800,200,0);
line(300,800,300,0);
line(400,800,400,0);
line(500,800,500,0);
line(600,800,600,0);
line(700,800,700,0);
strokeWeight(1);
line(800,50,0,50);
line(800,150,0,150);
line(800,250,0,250);
line(800,350,0,350);
line(800,450,0,450);
line(800,550,0,550);
line(50,800,50,0);
line(150,800,150,0);
line(250,800,250,0);
line(350,800,350,0);
line(450,800,450,0);
line(550,800,550,0);
line(650,800,650,0);
line(750,800,750,0);
stroke(240,0,0);
strokeWeight(4);
line(0,800,0,0);
stroke(0,240,0);
line(800,0,0,0);
strokeWeight(1);
stroke(0);
}