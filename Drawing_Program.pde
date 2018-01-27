int red = #F00707;
int blue = #2505FC;
int green = #49E009;
int yellow = #F4FC08;
int purple = #D308FC;
int white = #FFFFFF;
int black = #000000;
int lightblue = #05F5FF;
int magenta = #E809FA;
int orange = #F96B03;
int lcolor=0;
int background1 = white;

void setup() {
  size (750, 750);
  smooth();
  background (255);
  strokeWeight(5);
}

void draw() {
  stroke(lightblue);
  noStroke();
  fill(lightblue);
  rect(0, 0, 120, 700);
  loop();
  fill(black);
  textSize(25);
  text("Color", 25, 35);
  textSize(25);
  text("Brush", 25, 380);
  fill(red); //brush colour selection
  rect(25, 50, 70, 30);
  fill(green);
  rect(25, 95, 70, 30);
  fill(blue);
  rect(25, 140, 70, 30);
  fill(yellow);
  rect(25, 185, 70, 30);
  fill(purple);
  rect(25, 230, 70, 30);
  fill(black);
  rect(25, 275, 70, 30);
  fill(white);
  rect(25, 320, 70, 30);
  fill(black);
  textSize(20);
  text("eraser", 30, 340);
  
  fill(black);
  textSize(13);
  text("Background Color", 5, 610);
  
  fill(orange); //background colour selection
  rect(8, 625, 25, 25);
  fill(magenta);
  rect(48, 625, 25, 25);
  fill(red);
  rect(88, 625, 25, 25);
  fill(blue);
  rect(8, 665, 25, 25);
  fill(yellow);
  rect(48, 665, 25, 25);
  fill(green);
  rect(88, 665, 25, 25);

  fill(black); //brush size selection
  ellipse(60, 405, 5, 5);
  ellipse(60, 430, 10, 10);
  ellipse(60, 460, 20, 20);
  ellipse(60, 500, 30, 30);
  ellipse(60, 560, 50, 50);
  stroke(0);
  
 
if (mousePressed) {
  stroke(lcolor);
line(mouseX, mouseY, pmouseX, pmouseY); // LINE COLOR FUCTION WHILE DRAGGED
}
}
void mouseDragged() {
  stroke(lcolor);
line(mouseX, mouseY, pmouseX, pmouseY); // LINE COLOR FUCTION WHILE DRAGGED
}

void mousePressed() {
  if(mouseX > 25 && mouseX < 95 && mouseY > 50 && mouseY < 80){
    lcolor=red; //changes colour of brush
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 95 && mouseY < 125){
    lcolor=green;
    
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 140 && mouseY < 170){
    lcolor=blue;
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 185 && mouseY < 215){
  lcolor=yellow;
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 230 && mouseY < 260){
    lcolor=purple;
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 275 && mouseY < 305){
    lcolor=black; 
  }
  
  if(mouseX > 25 && mouseX < 95 && mouseY > 320 && mouseY < 350){
    lcolor=background1; //changes to current eraser colour
  }
  
  
 
  if(mouseX > 55 && mouseX < 65 && mouseY > 400 && mouseY < 410){
    strokeWeight(5); //changes brush size
  }
  
   if(mouseX > 55 && mouseX < 65 && mouseY > 425 && mouseY < 435){
    strokeWeight(10);
  }
  
  if(mouseX > 50 && mouseX < 70 && mouseY > 450 && mouseY < 470){
    strokeWeight(20);
  }
  
  if(mouseX > 45 && mouseX < 75 && mouseY > 485 && mouseY < 515){
    strokeWeight(30);
  }
  
  if(mouseX > 35 && mouseX < 85 && mouseY > 535 && mouseY < 585){
    strokeWeight(50); 
  }
  
  if(mouseX > 8 && mouseX < 33 && mouseY > 625 && mouseY < 650){
    background(orange);
    background1 = orange; //changes eraser colour
  }
  
  if(mouseX > 48 && mouseX < 73 && mouseY > 625 && mouseY < 650){
    background(magenta);
    background1 = magenta;
  }
  
  if(mouseX > 88 && mouseX < 113 && mouseY > 625 && mouseY < 650){
    background(red);
    background1 = red;
  }
  
  if(mouseX > 8 && mouseX < 33 && mouseY > 665 && mouseY < 690){
    background(blue);
    background1 = blue;
  }
  
  if(mouseX > 48 && mouseX < 73 && mouseY > 665 && mouseY < 690){
    background(yellow);
    background1 = yellow;
  }
  
  if(mouseX > 88 && mouseX < 113 && mouseY > 665 && mouseY < 690){
    background(green);
    background1 = green;
  }
}
void keyPressed() {
if(key=='e'){ //resets program
clear();
background(255);
}
}