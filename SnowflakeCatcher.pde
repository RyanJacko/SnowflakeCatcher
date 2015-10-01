
void setup()
{
  snow = new Snowflake[5];
  for (int i = 0; i < snow.length; i++)
  background (0);
  size (600,600);
}
void draw()
{
 snow[i].show();
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
    ellipse (X,Y,10,10);
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