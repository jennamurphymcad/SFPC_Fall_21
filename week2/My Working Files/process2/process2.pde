//y = 5x

//x = 5t
//y = 3t + 3
//
static final int NUM_LINES = 10;
float t;

void setup() {
  background(20);
  size(800, 800);
}

void draw() {
  background(20);
  stroke(255);
  strokeWeight(5);
  
  translate(width/2, height/2);
  
  for (int i = 0; i <NUM_LINES; i++) {
    for(int j=0; j<4; j++) {
        //line(x1(t + i +j), y1(t + i +j), x2(t + i +j), y2(t + i +j));
        stroke(255);
        point(x1(t+i+j*2), y1(t+i+j*2));
        rotate(j+i);
        stroke(#CCFFAA);
        point(x2(t + i ), y2(t + i ));
        stroke(#FFC0CB);
        point(x3(t + j + 40), y3(t + j +40));
    }

  for (int k = 0; i <NUM_LINES*3; i++) {
    for(int h=0; h<10; h++) {
        //line(x1(t + i +j), y1(t + i +j), x2(t + i +j), y2(t + i +j));
        stroke(255);
        point(x1(t+k+h*2), y1(t+k+h*2));
        rotate(-h+-k);
        stroke(#CCFFAA);
        point(x2(t + k ), y2(t + k ));
        stroke(#FFC0CB);
        point(x3(t + h + 40), y3(t + h +40));
    }
  }
  //}
  //point(x1(t+i+10), y1(t+i +10));
  //point(x2(t+i +10), y2(t+i +10));
}
  t+= 0.05;
}

float x1(float t) {
  return sin(t/2) *100 + sin(t)*200;
}

float y1(float t) {
  return cos(t)*150 + sin(t);
}

float x2(float t) {
  return sin(t/10) *100 + sin(t)*2;
}

float y2(float t) {
  return cos(t/20)*200 + cos(t/12) *20;
}

float x3(float t) {
  return sin(t/10) *100 + sin(t/2)*20;
}

float y3(float t) {
  return cos(t/20)*200 + cos(t/12) *10;
}
