Ball[] myBall;
int r=30;
boolean overlap;
int[] x=new int[10];
int[] y=new int[10];
void init() {
  myBall= new Ball[10];
  for (int i=0; i< myBall.length; i++) {
    float lX= random(width);
    float lY= random(height);
    float lR= random(10, 50);
    float lC= random(255);
    myBall[i]=new Ball(lX, lY, lR, lC, i+1);
  }
}
void setup() {
  size(800, 600);
  textSize(20);
  myBall= new Ball[10];
  for (int i=0; i< myBall.length; i++) {
    float lX= random(width);
    float lY= random(height);
    float lR= random(10, 50);
    float lC= random(255);
    myBall[i]=new Ball(lX, lY, lR, lC, i+1);
  }
}
void draw() {
  background(50);
  for (int i=0; i<myBall.length; i++) {
    noStroke();
    myBall[i].show();
  }
  if (mousePressed) {
    for (int i=0; i<myBall.length; i++) {
      myBall[i].behavior();
    }
  }
}
void keyPressed() {
  init();
}