
Snowflake [] snowday;
int totalMoving;
int totalSnowFlakes = 50;
void setup()
{
  background(0); 
  size(600,600);
  snowday = new Snowflake[500];
  for(int i = 0; i < totalSnowFlakes; i++) {
    snowday[i] = new Snowflake(false);
  }
  //your code here
}
void draw()
{  
  totalMoving = 0;
  for (int i = 0; i < totalSnowFlakes; i++){
    snowday[i].erase();
    snowday[i].lookDown();
    snowday[i].move();
    snowday[i].wrap();
    snowday[i].show();
    snowday[i].checkMoving();
  }
  if (totalMoving < 50) {
    totalSnowFlakes += 1;
    snowday[totalSnowFlakes-1] = new Snowflake(true);
  }
  //your code here

}
void mouseDragged()
{
  stroke(0,155,155);
  strokeWeight(5);
  line(pmouseX,pmouseY,mouseX,mouseY);
  strokeWeight(1);
  stroke(0);
  //your code here
}

class Snowflake
{
  int x;
  int y;
  boolean isMoving;
  boolean startTop;
  //class member variable declarations
  Snowflake(boolean inputstartTop)
  {
    x = (int)(Math.random()*601);
    if (inputstartTop == true) {
      y = 0;
    }
    else {
      y = (int)(Math.random()*601);
    }
    isMoving = true;
    //class member variable initializations
  }
  void show()
  {
    fill(255);
    ellipse(x,y,5,5);
    //your code here
  }
  void lookDown()
  {
    if (y > 0 && y < 601) {
      if(get(x,y+4) != color(0)) {
        isMoving = false;
      }
      else {
        isMoving = true;
      }
    }
    //your code here
  }
  void erase()
  {
    fill(0);
    ellipse(x,y,7,7);
    //your code here
  }
  void move()
  {
    if(isMoving == true){
      y += 1;
    }
    //your code here
  }
  void wrap()
  {
    if(y == 601) { 
      y = 0;
      x = (int)(Math.random()*601);
    }
    //your code here
  }

  void checkMoving()
  {
    if(isMoving == true) {
      totalMoving+= 1;
    }
  }
}