
void setup() {
  size(400, 400);
  background(10);
}

void draw() {
  fill(255, 150);
  for (int i=0; i<8; i ++) {
    float alpha=0;
    alpha=map(40*i, 0, width, 0, 1.437*PI);
    float r=20*cos(alpha);
    myForm(110, 10+50*i, r);
  }
}

void myForm(float x, float y, float elliR) {
  float r=elliR;
  fill(0);
  noStroke();
  for (int i=0; i<20; i ++) {
    ellipse(x+100+r*(i*2+1), y+r+20, r*2, r*2);
    fill(i*50);
  }
  for (int m =10; m <= 200; m+=15) {
    for (int n = 0; n <= 200; n+=20) {
      stroke(n, m, 255);
      line(n, m, n+10, m+10);
    }
  }
  for (int p =210; p <= 400; p+=15) {
    for (int q = 210; q <= 400; q+=20) {
      stroke(q, p, 255);
      line(q, p, q+10, p+10);
    }
  }
}