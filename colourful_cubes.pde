int max=300;

int mode=1;



void setup() {
  size(1000, 1000, P3D);
}

void draw() {
  background(0);
  translate(width/2, height/2, 0);
  rotateY(frameCount * 0.01);
  rotateX(frameCount * 0.01);
  rotateZ(frameCount * 0.01);
  for (int x= -max; x< max; x=x+50) {
    for (int y=-max; y<max; y=y+50) {
      for (int z=-max; z<max; z=z+50) {
        pushMatrix();
        fill(rainbowcolour(x), rainbowcolour(y), rainbowcolour(z));
        translate(x, y, z);
        if (mode ==1) box(30);
        if ( mode ==2) sphere(10);
        if (mode == 3) sphere(5);
        popMatrix();
      }
    }
  }
}

int rainbowcolour(int rainbow) {

  return(int) ((rainbow+ max)/ (2.8* max) * 255);
}


void keyPressed() {
  if (key == 'b') {
    noStroke();
    frameRate(50);
    mode=2;
  } else if (key == 't') {
    mode=1; }
    if (key == '0') {
      mode=3; }
  }
