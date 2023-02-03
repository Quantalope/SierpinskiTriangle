int t = -300;
int s = 0;
int o = 0;
int v = 0;
float f = 0;
public void setup()
{
  fill(0);
  rect(0,0,500,500);
  loop();
  noStroke();
  size(500,500);
}
public void draw()
{
  fill(0);
  rect(0,0,500,500);
  if(mouseX<=0)
    v=1;
  else if(mouseX>=500)
    v=100;
  else
    v = mouseX/5;
  if(t<0)
  {
    fill(255,0,0);
    textSize(100);
    text("WARNING", 20,200);
    fill(255);
    textSize(50);
    text("Viewers Discretion\n       is Advised", 20,270);
    fill(0,255-o);
    rect(0,0,500,500);
    o+=2;
    if(o>255)
      o=255;
  }
  if(t>0&&t<1200)
  {
    s=t/3;
    f=t/10;
    if(f<10)
      f=10;
    translate(width/2,height/2);
    fill(200);
    carpet(250,10,10);
    if(t>50&&t<200)
    {
      fill(v);
      textSize(100);
      text("JOIN US", -200,200);
    }
    if(t>250&&t<400)
    {
      fill(v);
      textSize(80);
      text("Together\nwe can rule\nthe world", -200,-150);
    }
    if(t>450&&t<650)
    {
      fill(v);
      textSize(60);
      text("The hour\ndestined by fate\nis sounding\nfor us", -220,-150);
    }
    if(t>700&&t<850)
    {
      fill(v);
      textSize(70);
      text("Bring up\nyour arms\nand die\nfor the cause", -220,-150);
    }
    if(t>900&&t<1000)
    {
      fill(v);
      textSize(125);
      text("RISE UP", -220,100);
    }
    fill(255);
    rotate((float)t/100);
    sierpinski(t,0,0);
    sierpinski(s*3/4,0,0+t/4);
    rotate(-(float)t/100);
    translate(-width/2,-height/2);
  }
  t++;
}
public void sierpinski(int a, int x, int y)
{
  if(a<=10)
  {
    triangle(x-a,y+a,x,y-a,x+a,y+a);
  }
  else
  {
    sierpinski(a/2,x-a/2,y+a/2);
    sierpinski(a/2,x+a/2,y+a/2);
    sierpinski(a/2,x,y-a/2);
  }
}
public void carpet(int a, int x, int y)
{
  if(a<=f)
  {
    rect(x-a,y-a,a,a);
  }
  else
  {
    x++;
    y++;
    carpet(a/3,x-a*2/3,y-a*2/3);
    carpet(a/3,x-a*2/3,y);
    carpet(a/3,x-a*2/3,y+a*2/3);
    carpet(a/3,x,y-a*2/3);
    carpet(a/3,x,y+a*2/3);
    carpet(a/3,x+a*2/3,y-a*2/3);
    carpet(a/3,x+a*2/3,y);
    carpet(a/3,x+a*2/3,y+a*2/3);
  }
}
