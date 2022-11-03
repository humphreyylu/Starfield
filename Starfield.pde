Particle[]  parts;
void setup(){
  size(800,800);
  strokeWeight(0);
  parts = new Particle[1000];
    parts[0] = new OddballParticle();
    parts[1] = new OddballParticle();
    parts[2] = new OddballParticle();

  for(int i = 3; i<parts.length; i++){
    parts[i] = new Particle();
  }
}
void draw(){
  background(0);
  for(int i = 0; i<parts.length; i++){
    parts[i].move();
    parts[i].show();
  }
}
class Particle{ 
  double myX,myY, mySpeed, myAngle;
  int myColor;
  Particle(){
    myX = myY = 400;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX = myX + Math.cos(myAngle)*mySpeed;
    myY = myY + Math.sin(myAngle)*mySpeed;
  }
  void show(){
    fill(myColor);
    strokeWeight(0);
    ellipse((int) myX, (int)myY, 10,10);
  }
}
  class OddballParticle extends Particle{
    OddballParticle(){
    myX = myY = 400;
    mySpeed = Math.random()*10;
    myAngle = Math.random()*2*Math.PI;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
  }
  void move(){
    myX = myX + Math.cos(myAngle)*(mySpeed-5);
    myY = myY + Math.sin(myAngle)*(mySpeed-5);
  }
  void show(){
   fill(245, 189, 31);
   ellipse((int)myX, (int)myY, 80,80);
  }
}
