/* OpenProcessing Tweak of *@*http://www.openprocessing.org/sketch/375830*@* */
/* !do not delete the line above, required for linking your tweak if you upload again */
PImage img1;
PImage img2;
PImage img3;
PImage img4;
PImage img5;

int time;
float x1;
float x2;
float x3;
float x4;
float x5;
float y = 0;

float xMod1 = 0.55;
float xMod2 = 0.15;
float xMod3 = 0.03;
float xMod4 = 0.015;
float xMod5 = 0;

color bar1 = color( 255, 100);
color bar2 = color( 255, 200);
float xbar = 3;
float ybar;
float xbarInitial;
float xbarClick;
boolean barPressed = false;

  
void setup() {
  frameRate( 24);
  size(600, 324);
  ybar = height - 15;
  
  img1 = loadImage("env08_color_05_web.png");
  img2 = loadImage("env08_color_04_web.png");
  img3 = loadImage("env08_color_03_web.png");
  img4 = loadImage("env08_color_02_web.png");
  img5 = loadImage("env08_color_01_web.png");
  
}

void draw() {
  //time++;
  //println(frameRate);
  
  background(255);
  
  x4 = -xMod4 * xbar;
  x3 = -xMod3 * xbar;
  x2 = -xMod2 * xbar;
  x1 = -xMod1 * xbar;
  
  image( img5, x5, y);
  image( img4, x4, y);
  image( img3, x3, y);
  image( img2, x2, y);
  image( img1, x1, y);
  
  if( barPressed) {
    if( xbar >= 3 && xbar <= width - 103) {
      xbar = mouseX - xbarClick;
    }
    fill( bar1);
    stroke( bar2);
  } else {
      fill( bar2);
      stroke( bar1);
  }
  
  if( xbar < 3) {
    xbar = 3; 
  }
  if( xbar > width - 103) {
    xbar = width - 103; 
  }
  
  rect( xbar, ybar, 100, 10, 5);
  
} 

void mousePressed() {
  if( mouseX >= xbar && mouseX <= xbar + 100 & mouseY >= height - 15 && mouseY <= height) {
    barPressed = true;
    xbarInitial = xbar;
    xbarClick = mouseX - xbarInitial;
  }
}

void mouseReleased() {
  if( barPressed) {
    barPressed = false; 
  }
}