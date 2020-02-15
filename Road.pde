class Road
{
  color c1, c2, c3, c4, c5, c6;
  float w;

  Road()
  {
    c1 = color(random(0, 255), random(0, 255), random(0, 255));
    c2 = color(random(0, 255), random(0, 255), random(0, 255));
    c3 = color(random(0, 255), random(0, 255), random(0, 255));
    c4 = color(random(0, 255), random(0, 255), random(0, 255));
    c5 = color(random(0, 255), random(0, 255), random(0, 255));
    c6 = color(random(0, 255), random(0, 255), random(0, 255));
    w = 120;
  }

  void r1()
  {
    fill(c1);
    pushMatrix();
    stroke(0);
    translate(width/4, height/4, 0);
    box(w);
    popMatrix();
  }

  void r2()
  {
    fill(c2);
    pushMatrix();
    translate(width/4*3, height/4, 0);
    box(w);
    popMatrix();
  }

  void r3()
  {
    fill(c3);
    pushMatrix();
    translate(width/2, height/2, 0);
    rotateX(theta);
    rotateY(theta);
    rotateZ(theta);
    theta+=0.01;
    box(2*w, 2*w, 2*w);
    popMatrix();
  }

  void r4()
  {
    fill(c4);
    pushMatrix();
    translate(width/2-150, height-100, 0);
    box(w, w, w);
    popMatrix();
  }

  void r5()
  {
    fill(c5);
    pushMatrix();
    translate(width/2+150, height-100, 0);
    box(w, w, w);
    popMatrix();
  }
}
