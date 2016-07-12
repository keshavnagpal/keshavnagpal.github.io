int x, y, xspeed, yspeed;
boolean going=false;

void setup() {
  size(720, 400);
  x=20;
  y=100;
  xspeed=5;
  yspeed=5;
}


void draw() {
  background(20);
  fill(255);
  rectMode(CENTER);
  rect(2, mouseY, 10, 100);

  fill(255);
  rect(width-12, mouseY, 10, 100);

  fill(250);
  ellipse(x, y, 20, 20);
  if(going){
  x+=xspeed;
  y+=yspeed;
  }

  if (y>height||y<0) {
    yspeed=-yspeed;
  }

  if (x>width-12||x<12) {
    if (y<mouseY+40 && y>mouseY-40 && x<width+10) {
      xspeed=-xspeed;
    }
  }
}
void mousePressed(){
  going=!going;
}