class Bird{
  PVector pos;
  PVector vel;
  PVector acc;
  PImage bird;
  
  //Brain brain;
  int y = 0;
  int vy = 0;
  int gravity = 1;
  
  Bird(){
    //brain = new Brain();
    
    //vel = new PVector(0,0);
    //acc = new PVector(0,0);
  }
  
  
  
  //draws the bird on the screen
  void show(){
    bird = loadImage("Pictures/bird.png");
    vy += gravity;
    y += vy;
    pos = new PVector(width/2, y);
    fill(255,0,0);
    image(bird, pos.x, pos.y);
    //collision up and down
    vy = update(pos.y, vy);
  }
  
  int update(float pos, int vy){
    //create collision
    if( pos<2){
      return vy=15;
    }else if(pos>height-2){
      return vy=-10;
    }
    return vy;
  }
  
  void keyPressed(){
    if(key==' '){
      vy = -10;
      show();
    }
  }
  
  void keyReleased(){
    if(key==' '){
      vy = 3;
      show();
    }
  }
  
}
