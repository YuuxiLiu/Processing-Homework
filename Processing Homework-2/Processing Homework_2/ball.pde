class Ball {
  PFont font;
  float x;
  float y;
  float r;
  float c;
  int index;
  float speedX=random(-5, 5);
  float speedY=random(-5, 5);
  float gravity=0.1;
  int[] m=new int[10];
  int[] n=new int[10];

  Ball(float x_, float y_, float r_, float c_, int index_) {
    x=x_;
    y=y_;
    r=r_;
    c=c_;
    index=index_;
  }
  void behavior() {
    show();
    gravityEffect();
    collision();
    update();
  }  
  void show() {
    font= createFont("微软雅黑", 100);
    for (int i=0; i<m.length; i++) {
      float myDist=dist(mouseX, mouseY, x, y); 
      text("Processing", width-150, 50);
      if (myDist<=r) {
        fill(255, 150);
        ellipse(x, y, r*2.3, r*2.3);  
      } 
      fill(c);
      ellipse(x, y, r*2, r*2);
      textAlign(CENTER, CENTER);
      fill(255);
      text(index, x, y);
    }
  }
  void gravityEffect() {
    speedY +=gravity;
  }
  void update() {
    x+=speedX;
    y+=speedY;
  }
  void collision() {
    if (x>width-r||x<r) {
      speedX=speedX*-1;
    }   
    if (y>height-r||x<r) {
      speedY=speedY*-1;
    }
  }
}