

float x;
float y;
int g=0;
int bum=0;
color col;
import shiffman.box2d.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;
import processing.sound.*;
SoundFile file1;
SoundFile file2;
SoundFile file3;
SoundFile file4;
SoundFile file5;
SoundFile file6;
SoundFile file7;
SoundFile file8;
SoundFile file9;
SoundFile file10;
SoundFile file11;
SoundFile file12;


Box2DProcessing box2d;

// An ArrayList of particles that will fall on the surface
ArrayList<Particle> particles;
ArrayList<Particle1> particles1;

// An object to store information about the uneven surface

 void chan() {
    col = color(0, 0, 255);
  }
   void chan1() {
    col = color(255, 0, 0);
  }
    void chan2() {
    col = color(237, 248, 53);
  }
    void chan3() {
    col = color(132, 58, 255);
  }
     void chan4() {
    col = color(8, 255, 83);
  }
     void chan5() {
    col = color(36, 246, 221 );
  }
     void chan6() {
    col = color(255);
  }
     void chan7() {
    col = color(30, 222, 0);
  }
      void chan8() {
    col = color(255, 112, 173);
  }


void setup() {
  size(800,500);
  smooth();
  background(0);

  file1 = new SoundFile(this,"1lala.mp3");
   file2 = new SoundFile(this,"C4.wav");
    file3 = new SoundFile(this,"D4.wav");
     file4 = new SoundFile(this,"E4.wav");
      file5 = new SoundFile(this,"F4.wav");
      file6 = new SoundFile(this,"G4.wav");
      file7 = new SoundFile(this,"A4.wav");
      file8 = new SoundFile(this,"B4.wav");
      file9 = new SoundFile(this,"C5.wav");
      file10 = new SoundFile(this,"D5.wav");
      file11 = new SoundFile(this,"HAT.wav");
       file12 = new SoundFile(this,"SNARE.wav");
g=0;

  box2d = new Box2DProcessing(this);
  box2d.createWorld();
 
  box2d.setGravity(0, g);


  particles = new ArrayList<Particle>();
   particles1 = new ArrayList<Particle1>();

}

void draw() {
   box2d.setGravity(0, g);

pres();


  // We must always step through time!
  box2d.step();


    for (Particle1 p: particles1) {
    p.display1();
  }
  for (Particle p: particles) {
    p.display();
  }

 

  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p = particles.get(i);
    if (p.done()) {
      particles.remove(i);
    }
  }
   for (Particle p1: particles) {
    p1.display();
  }
  for (int i = particles.size()-1; i >= 0; i--) {
    Particle p1 = particles.get(i);
    if (p1.done()) {
      particles.remove(i);
    }
  }

}
void pres(){

    if (keyPressed==true) {
      if (key=='s'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,3);
    particles.add(new Particle(x,y,sz));
    chan();
     sound3();
    
      }
  }
      if (keyPressed==true) {
      if (key=='a'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,8);
    particles .add(new Particle(x,y,sz));
    chan1();
    sound2();
    
     
    
      }
  }
        if (keyPressed==true) {
      if (key=='d'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(6,10);
    particles .add(new Particle(x,y,sz));
    chan2();
    
     sound4();
    
      }
  }
  
          if (keyPressed==true) {
      if (key=='f'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,3);
    particles .add(new Particle(x,y,sz));
    chan3();
    sound5();
     
    
      }
  }
            if (keyPressed==true) {
      if (key=='g'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,3);
    particles .add(new Particle(x,y,sz));
    chan4();
    sound6();
    
     
    
      }
  }
            if (keyPressed==true) {
      if (key=='h'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(4,7);
    particles .add(new Particle(x,y,sz));
    chan5();
    
     sound7();
    
      }
  }
            if (keyPressed==true) {
      if (key=='j'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,3);
    particles .add(new Particle(x,y,sz));
    chan6();
    sound8();
     
    
      }
  }
            if (keyPressed==true) {
      if (key=='k'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,3);
    particles .add(new Particle(x,y,sz));
    chan7();
    sound9();
     
    
      }
  }
              if (keyPressed==true) {
      if (key=='l'){
        background(0);
    x=random(800);
    y=random(500);
    float sz = random(1,8);
    particles .add(new Particle(x,y,sz));
    chan8();
    sound10();
     
    
      }
  }
   if (keyPressed==true) {
      if (key=='b'){
         background(random(0,255), random(0,255),  random(0,255));
         sound11();
      }
   } 
   else {background(0);
 texto();}
  

    if (keyPressed==true) {
    if (key=='v'){

          sound1();
 background(0);
    float sz = 80;
    particles1.add(new Particle1(width/2,height/2,sz));
  
  }    
    }

    
    if (keyPressed==true) {
    if (key=='n'){
      g=-250;
sound12();
  }
  }
  else {g=20;}

}
void texto(){
    text("click sobre la pantalla para iniciar:",300,20);
  text("TECLAS:",700,15);
    text("a-DO",700,30);
    text("s-RE",700,50);
    text("d-MI",700,70);
    text("f-FA",700,90);
    text("g-SOL",700,110);
    text("h-LA",700,130);
    text("j-SI",700,150);
    text("k-DO",700,170);
    text("l-RE",700,190);
    text("v-BOMB",700,210);
    text("b-HAT",700,230);
    text("n-SNR",700,250);
}