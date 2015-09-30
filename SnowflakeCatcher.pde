
void setup()
{
  background (0);
  size (600,600);
}
void draw()
{
  //your code here
}
void mouseDragged()
{
  //your code here
}

class Snowflake
{
  int X,Y;
  Snowflake()
  {
    X = (int)(Math.random()*601)+1;
    Y = 0;
  }
  void show()
  {
    //Money image
  }
  void lookDown()
  {
    //your code here
  }
  void erase()
  {
   
  }
  void move()
  {
    Y = Y + 10;
  }
  void wrap()
  {
    //your code here
  }
}