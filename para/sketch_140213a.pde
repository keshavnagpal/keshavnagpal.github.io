/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/133956*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
/* @pjs preload="foreground.png";*/
/* @pjs preload="middleground.png";*/
/* @pjs preload="background.png";*/

float speed;
PImage fg;
PImage ffg;
PImage mg;
PImage bg;
boolean flag=false;
float fgX, ffgX, mgX, bgX, xOffset=0.0, bx, track;
void setup() {
  size(1280, 640);

  bg = loadImage("bg.jpg");
  mg = loadImage("mg.png");
  fg = loadImage("fg.png");
  ffg = loadImage("ffg.png");
  speed=600;
}

void draw() {
  fill(50);
  rect(0, 0, width, height);
  //logic
  if (flag) {
    float ffgX=map(width-bx, 0, width, 0, -speed);
    float fgX=map(width-bx, 0, width, 0, -speed);
    float mgX=map(width-bx, 0, width, 0, -speed*0.9);
    float bgX=map(width-bx, 0, width, 0, -speed/5);
    track=bx;
  } else {
    float ffgX=map(width-track, 0, width, 0, -speed);
    float fgX=map(width-track, 0, width, 0, -speed);
    float mgX=map(width-track, 0, width, 0, -speed*0.9);
    float bgX=map(width-track, 0, width, 0, -speed/5);
  }
  //draw
  image(bg, bgX-200, 0);
  image(mg, mgX, 0);
  image(fg, fgX, 0);
  image(ffg, ffgX, 0);
}

void mousePressed() {
  xOffset = mouseX-bx;
}

void mouseReleased() {
  flag=false;
}

void mouseDragged() {
  flag=true;
  bx = mouseX-xOffset;
}