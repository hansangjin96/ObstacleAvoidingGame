class Obstacle2
{
  float w,s,xx=-0.001;
  color c;

  Obstacle2(float tw)
  {
    w=tw;
    s=0.05;
    c=color(random(0,255),random(0,255),random(0,255));
  }

  void display()
  {
    fill(c);
    pushMatrix();
    translate(width/2,100,0);
    rotateX(xx);
    xx+=s;
    if(xx>2.6)
    {
      xx=0;
    }
    box(w,8*w,w);
    popMatrix();
  }
  
  boolean col()
  {
    if(xx>2.4 || xx<0.2)
    {
      return true;
    }
    else
    {
      return false;
    }
  }
  
  
}
