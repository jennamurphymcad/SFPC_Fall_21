//y = 5x

//x = 5t
//y = 3t + 3
//
static final int NUM_LINES = 100;
float t;

void setup() {
  background(20);
  size(800, 800);
}

void draw() {
  background(20);
  //stroke(255);
  //strokeWeight(5);
  
  translate(width/2, height/2);
  
  for (int i = 0; i <NUM_LINES; i++) {
    for(int j=0; j<3; j++) {
        //line(x1(t + i +j), y1(t + i +j), x2(t + i +j), y2(t + i +j));
        
        fill(255);
        ellipse(x1(t+i+j*2)*sin(t)+sin(t), y1(t+i+j*2)*cos(t), 3, 3);
        //translate(5,5);
    
        fill(#CCFFAA);
        ellipse(x2(t + i )/3, y2(t + i ), 4, 4);
        fill(#FFC0CB);
        ellipse(x3(t + j + i)/100, y3(t + j +40) +sin(t), 3, 3);
            rotate(j );
        //translate(t,i);
       // fill(#FFFF00);
       // ellipse(x4(t + i +j)/3, y4(t + i +j),5,5);
       // fill(#CCFFAA);
       // ellipse(x5(t - i), y5(t - i),5,5);    
       // fill(#FFFF00);
       // ellipse(x6(t + i)/30, y6(t + i)/2,5,5);
       // fill(#87CEEB);
       // ellipse(x7(t + i), y7(t + i),5,5);
        
       // fill(#4682B4);
       // ellipse(x8(t + i)/100, y8(t - i),5,5);
        
       //fill(#008080);
       // ellipse(x9(t + i)/20, y9(t + i),5,5);
    }

//  for (int k = 0; k <NUM_LINES*3; k++) {
//    for(int h=0; h<10; h++) {
//        //line(x1(t + i +j), y1(t + i +j), x2(t + i +j), y2(t + i +j));
//        stroke(255);
//        point(x1(t+k+h*2), y1(t+k+h*2));
//        //rotate(-h+-k);
//        stroke(#CCFFAA);
//        point(x2(t + k ), y2(t + k ));
//        stroke(#FFC0CB);
//        point(x3(t + h + 40), y3(t + h +40));
//    }
//  }
  //}
  //point(x1(t+i+10), y1(t+i +10));
  //point(x2(t+i +10), y2(t+i +10));
}
  t+= 0.05;
  //rotate(t);
}

float x1(float t) {
  return sin(t) + sin(t) * 40;
}

float y1(float t) {
  return cos(t)*15/cos(t) + cos(t) * 150;
}

float x2(float t) {
  return sin(t/10) *200 + sin(t)*2;
}

float y2(float t) {
  return cos(t/20)*200 + cos(t/12) *20;
}

float x3(float t) {
  return sin(t/10) *100 + sin(t/2)*20;
}

float y3(float t) {
  return cos(t/20)*200 + cos(t*2) +10;
}

float x4(float t) {
  return sin(t) *30 + sin(t)*2 + sin(t)/300;
}

float y4(float t) {
  return cos(t)*250 + cos(t/12);
}

float x5(float t) {
  return sin(t/2) *100 + sin(t)*20;
}

float y5(float t) {
  return cos(t/30) + cos(t/12) *100;
}

float x6(float t) {
  return sin(t) *180 + sin(t)*2;
}

float y6(float t) {
  return cos(t)*200 + cos(t/12) *10;
}

float x7(float t) {
  return sin(t) *150 + sin(t)*2;
}

float y7(float t) {
  return cos(t)*250 + cos(t/12) *10;
}

float x8(float t) {
  return sin(t) *200 + sin(t)*2;
}

float y8(float t) {
  return cos(t)*250 + cos(t/12) *10;
}

float x9(float t) {
  return sin(t) *250 + sin(t)*2;
}

float y9(float t) {
  return cos(t)*250 + cos(t/12) *10;
}
