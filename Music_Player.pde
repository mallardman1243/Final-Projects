import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

color red = #E80514, blue = #0E07F2, orange = #F78007, green = #0CE56F;
color boarder = red, inside = blue, boarder2 = orange, inside2 = green, 
boarder3 = orange, inside3 = green, boarder4 = orange, inside4 = green;
PImage bg;

Minim minim;
AudioPlayer Player;


void setup()
{
size(500, 200);
bg = loadImage("img_8179-path-to-beach-q100-500x200.jpg");

minim = new Minim(this);
Player = minim.loadFile("Eminem - Rap God (Explicit).mp3");
}

void draw()
{
   background(bg);
  
fill(boarder2);
ellipse(250, 100, 75, 75);
fill(inside2);
triangle(222, 80, 222, 120, 250, 100);
rectMode(CENTER);
fill(inside2);
rect(268, 100, 28, 28);
rectMode(CORNER);

fill(inside3);
triangle(325, 85, 325, 115, 350, 100);
fill(inside4);
triangle(175, 85, 175, 115, 150, 100);
   
   fill(boarder);
   rect(450, 0, 50, 30);
   fill(inside);
   rect(450+5, 0+5, 50-5-5, 30-5-5);
   
   
    if (mouseX > 450 && mouseX < 500 && mouseY > 0 && mouseY < 30) {
    boarder = blue;
    inside = red;
  } else {
    boarder = red;
    inside = blue;
  }
   if (mouseX>=213 && mouseX<=287 && mouseY>=63 && mouseY<=137){
    boarder2 = green;
    inside2 = orange;
   }else{
    boarder2 = orange;
    inside2 = green; 
   } 
 if (mouseX>=325 && mouseX<=350 && mouseY>=85 && mouseY<=115){
     boarder3 = green;
    inside3 = orange;
 }else{
    boarder3 = orange;
    inside3 = green;
 }
 if (mouseX>=150 && mouseX<=175 && mouseY>=85 && mouseY<=115){
  boarder4 = green;
    inside4 = orange;
  }else{
    boarder4 = orange;
  inside4 = green;
  }
}


void mousePressed () {
  if (mouseX>=450 && mouseX <=500 && mouseY>=0 && mouseY<=30) {
    exit ();
  }
  if (mouseX>=213 && mouseX<=287 && mouseY>=63 && mouseY<=137){
  if (!Player.isPlaying())
    Player.play();
  else{
    Player.pause();
  }
  }
}