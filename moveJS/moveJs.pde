int x, y, xspeed, yspeed;
boolean going=false;
int mY;

void setup() {
  size(720, 400);
  x=20;
  y=100;
  xspeed=5;
  yspeed=5;
  mY=height/2;
}

int score=0;
void draw() {
  background(50); 
  if(mouseY<height-45 && mouseY>40){
    mY=mouseY;
  }
  fill(255);
  rectMode(CENTER);
  rect(3, mY, 10, 100);

  fill(255);
  rect(width-4, mY, 10, 100);

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
      score+=1;
    }
  }
  if(x>width+150||x<-150){
    xspeed=-xspeed;
    score=0;
  }
}
void mousePressed(){
  going=!going;
}