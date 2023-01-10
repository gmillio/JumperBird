Bird test;

int x1 = 800;
int x2 = 1000;
int x3 = 1200;
int x4 = 1400;
int vx = 10;
float randomY1 = 200;
float randomY2 = 150;
float randomY3 = 350;
float randomY4 = 200;
PImage background;
PImage pipeUp;
PImage pipeDown;

void setup(){
  size(800,500);
  frameRate(30);
  test = new Bird();
}


void draw(){
  background = loadImage("Pictures/background.jpeg");
  pipeUp = loadImage("Pictures/pipeUp.png");
  pipeDown = loadImage("Pictures/pipeDown.png");
  background(background);
  
  //draw obstacle
  x1 -= vx;
  x2 -= vx;
  x3 -= vx;
  x4 -= vx;
  PVector rect1 = new PVector(x1, 0);
  PVector rect2 = new PVector(x2, 0);
  PVector rect3 = new PVector(x3, 0);
  PVector rect4 = new PVector(x4, 0);

  fill(0);
  image(pipeDown,rect1.x,randomY1-350);
  image(pipeUp,rect1.x,randomY1+80);
  
  image(pipeDown,rect2.x,randomY2-350);
  image(pipeUp,rect2.x,randomY2+80);
  
  image(pipeDown,rect3.x,randomY3-350);
  image(pipeUp,rect3.x,randomY3+80);
  
  image(pipeDown,rect4.x,randomY4-350);
  image(pipeUp,rect4.x,randomY4+80);
  
  
  
  //randomize the position of the "door" when rect is out of the screen
  if(rect1.x<2){
    x1=width;
    randomY1 = random(150, 350);
  }else if( rect2.x<2){
    x2=width;
    randomY2 = random(150, 350);
  }else if(rect3.x<2){
    x3=width;
    randomY3 = random(150,350);
  }else if(rect4.x<2){
    x4=width;
    randomY4 = random(150,350);
  }
  
  test.show();
  test.keyPressed();
  test.keyReleased();

}
