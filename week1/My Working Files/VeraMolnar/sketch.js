function setup() {
    createCanvas(1000, 1000);
    noLoop();
  }
  
  function draw() {
    background(255);
    colorMode(RGB, 255, 255, 255, 1);
    translate(width-900, 0);
    strokeWeight(.35);
  

    for (var x=0; x <= width; x += width/75) {
      if (x <= 500) {
        fill(0,0,0,.7);
        // stroke(255);
      } else {
        noFill();
        // stroke(0);
        // strokeWeight(.8);
      }
      rect(x*.45,200+random(-30,40),5,200);
      rect(x*.45,400+random(-40,40),5,200);
      rect(x*.45,600+random(-30,40),5,200);
    }
  }

function keyReleased() {
  if (key == 's' || key == 'S') saveCanvas(gd.timestamp(), 'png');
}
