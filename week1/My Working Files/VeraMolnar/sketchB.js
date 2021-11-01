// let angle = 0.0;
// let jitter = 0.0;

// function setup() {
//     createCanvas(1000, 1000);
//     noLoop();
//     // rectMode(CENTER);
//   }
  
//   function draw() {
//      background(255);
//     // colorMode(RGB, 255, 255, 255, 1);
//     translate(width-900, 0);
//     // strokeWeight(.35);
//     fill(0);
//     noStroke();
//     if (second() % 2 === 0) {
//         jitter = random(-0.1, 0.1);
//       }
//       //increase the angle value using the most recent jitter value
//       angle = angle + jitter;
//       //use cosine to get a smooth CW and CCW motion when not jittering
//       let c = cos(angle);
//       //move the shape to the center of the canvas
//       translate(width / 2, height / 2);
//       //apply the final rotation
//       rotate(c);
  
    
//     for (var x=0; x <= width; x += width/25) {
//         for (var i=0; i <= height; i += height/25) {
//     //   if (x <= 500) {
//     //     fill(0,0,0,.7);
//     //     // stroke(255);
//     //   } else {
//     //     noFill();
//     //     // stroke(0);
//     //     // strokeWeight(.8);
//     //   }
 
//       // during even-numbered seconds (0, 2, 4, 6...) add jitter to
//   // the rotation

//     rect(x*.8,i*.8,20,20);
//     // if (random(0,1) < 0.95){

//     //     translate(width / 2, height / 2)
//     //     rotate(PI/3.0);

//     // }


//     //   rect(x*.5,400+random(-40,40),2,3);
//     //   rect(x*.5,600+random(-30,40),2,3);
//         }

//     }
//   }

// function keyReleased() {
//   if (key == 's' || key == 'S') saveCanvas(gd.timestamp(), 'png');
// }



let angle = 0.0;
let jitter = 0.0;

function setup() {
  createCanvas(720, 400);
  noStroke();
  fill(255);
  //Draw the rectangle from the center and it will also be the
  //rotate around that center
  rectMode(CENTER);
}

function draw() {
  background(51);
  for (var x=0; x <= width; x += width/25) {
  // during even-numbered seconds (0, 2, 4, 6...) add jitter to
  // the rotation
  if (second() % 2 === 0) {
    jitter = random(-0.1, 0.1);
  }
  //increase the angle value using the most recent jitter value
  angle = angle + jitter;
  //use cosine to get a smooth CW and CCW motion when not jittering
  let c = cos(angle);
  //move the shape to the center of the canvas
  translate(width / 2, height / 2);
  //apply the final rotation
  rotate(c);

    rect(x*.8, 200 + x, 180, 180);
  }
}
