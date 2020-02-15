class Car
{
  float x, y, w, s, theta=0;
  float state;
  color c;

  Car(float tx, float ty, float tw, float ts)
  {
    x=tx;
    y=ty;
    w=tw;
    s=ts;
    c = color(random(0, 255), random(0, 255), random(0, 255));
  }

  void display3()
  {
    lights();
    noStroke();
    translate(x, y, 0);
    rotateX(mouseY * 0.05);
    rotateY(mouseX * 0.05);
    fill(mouseX*255/width, mouseY*255/height, (mouseX+mouseY)*255/height);
    sphereDetail(mouseX/50);
    sphere(w);
  }

  void moveup()
  {
    y-=s;
  }
  void movedown()
  {
    y+=s;
  }
  void moveright()
  {
    x+=s;
    theta+=0.01;
  }
  void moveleft()
  {
    x-=s;
  }

  void scup()
  {
    w=w*1.3;
  }

  void scdn()
  {
    w=w*0.7;
  }

  boolean collision1(Road r1)
  {
    float distance = dist(x+50, y+632,0, width/4, height/4,0); 
    float distance2 = dist(x+50, y+632,0, width/4*3, height/4,0); 
    float distance3 = dist(x+50, y+632,0, width/2, height/2+30,0); 
    float distance4 = dist(x+50, y+632,0, width/2-150, height-100,0); 
    float distance5 = dist(x+50, y+632,0, width/2+150, height-100,0); 

    if (distance<w+(r1.w)/2 || distance2<w+(r1.w)/2 || distance3<w+(r1.w*2)*0.7 || distance4<w+(r1.w)/2 ||distance5<w+(r1.w)/2
      || x+50<0 || x+50>width || y+632>height || y+632<0)
    {
      return true;
    } else
    {
      return false;
    }
  }

  boolean collision2(Obstacle1 o1)
  {
    float distance = dist(x+50, y+632,0, o1.x, o1.y,0);

    if (distance<w+o1.r)
    {
      return true;
    } else
    {
      return false;
    }
  }
  
  boolean collision3(Obstacle2 o2)
  {
    
    if((o2.col()) && x+50+w>width/2-o2.w/2 && x+50-w<width/2+o2.w/2)
    {
      return true;
    }
    else
    {
      return false;
    }
  }

  void pop()
  {
    x=x-10000;
    y=y-10000;
  }
  
  boolean finish()
  {
    if (x+50>550 && y+632>650)
    {
      return true;
    } else
    {
      return false;
    }
  }
}
