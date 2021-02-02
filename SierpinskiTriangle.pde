public void setup()
{
  size(400, 400);
}
public void draw()
{
  int count = 0;
  if(mousePressed == true)
  count = count + 400;
  sierpinski(0, 400, count);
}
public void mousePressed()//optional
{
  
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20)
  {
    fill(mouseX, mouseY, mouseY);
    triangle(x, y, x + len/2, y - len, x + len, y);
  }
  else
  {
    sierpinski(x, y, len/2);
    sierpinski(x + len/2, y, len/2);
    sierpinski(x + len/4, y-len/2, len/2);
  }
}
