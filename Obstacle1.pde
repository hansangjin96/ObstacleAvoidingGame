class Obstacle1
{
  
  float r,x,y,s;
  color c;
  
  Obstacle1()
  {
    r= random(10,20);
    x= -r*5;
    y= height/2;
    s= random(3,4);
    c= color(random(255),random(255),random(255));
  }

  void display()
  {
    fill(c);
    pushMatrix();
    translate(x,y,0);
    sphere(r);
    popMatrix();
  }
  
  boolean Bottom()
  {
    if(x>width+r*5)
    {
      return true;
    }
    else
    {
      return false;
    }
  }

  void move()
  {
    x+=s;
  }
  
}
