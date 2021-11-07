Particle[] a = new Particle[800];
void setup()
{
  size(400,400);
  for(int i = 0; i<a.length;i++){
   a[i]= new Particle(); 
  }
  a[2]= new OddballParticle();
}
void draw()
{
  background(0);
  for(int i = 0; i<a.length; i++){
   a[i].show();
   a[i].move();
  }
}
class Particle
{
 double myX, myY, mySpeed, myAngle;
 int myColor;
 Particle(){
   myX= 200;
   myY= 200;
   mySpeed= Math.random()*15;
   myAngle= Math.random()*2*Math.PI;
   myColor= color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
 }
 void move(){
   myX= myX + Math.cos(myAngle)*mySpeed;
   myY= myY + Math.sin(myAngle)*mySpeed;
 }
 void show(){
   fill(myColor);
   ellipse((float)myX,(float)myY,20,20);
 }
}

class OddballParticle extends Particle
{
  OddballParticle(){
  myX = 100;
  myY = 100;
  mySpeed=Math.random()*30;
  myAngle= Math.random()*2*Math.PI;
  myColor=color(255,255,255);
  }
 void move(){
   myX= myX +10;
   myY = myY +10;
  }
 void show(){
    fill(myColor);
    ellipse((float)myX,(float)myY,60,60);
  }
}
