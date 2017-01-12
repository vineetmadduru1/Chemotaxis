Bacteria [] dots;
Bacter [] dot;
 void setup()   
 {     
   size(1000,1000);
   dots = new Bacteria[50];
   for(int i = 0; i < dots.length; i++){
     dots[i] = new Bacteria();
   }
   dot = new Bacter[50];
   for(int i = 0; i < dots.length; i++){
     dot[i] = new Bacter();
   }
 }   
 void draw()   
 {    
   
   background(0);
   for(int o = 0; o < dots.length; o++){
     dots[o].move();
     dots[o].show();
     
   }
   for(int u = 0; u < dot.length; u++){
     dot[u].mover();
     dot[u].showr();
     
 }
 }
 class Bacteria    
 { 
   int x,y, size;
   Bacteria() {
  x = (int)(Math.random()*300);
  y = (int)(Math.random()*300);
  size = (int)(Math.random()*75)+ 25;
   }
  void show() {
    fill((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
    ellipse(x,y,size,size);
  }
  void move() {
    if( mousePressed) {
      x = (int)(Math.random()*1000);
      y = (int)(Math.random()*1000);
    }
    
    if(mouseX > x && mouseY > y) {
      x+=(int)(Math.random()*15)-4;
      y+=(int)(Math.random()*15)-4;
    }
    else if(mouseX < x && mouseY < y) {
      x-=(int)(Math.random()*15)-4;
      y-=(int)(Math.random()*15)-4;
    }
    else if(mouseX < x && mouseY > y) {
      x-=(int)(Math.random()*15)-4;
      y+=(int)(Math.random()*15)-4;
    }
    else if(mouseX > x && mouseY < y) {
      x+=(int)(Math.random()*15)-4;
      y-=(int)(Math.random()*15)-4;
    }
    else {
      x+= (int)(Math.random()*15)-4;
      y+= (int)(Math.random()*15)-4;
    }
 }
 void mousePressed() {
   
 } 
 }
 class Bacter    
 { 
   int x,y, size;
   Bacter() {
  x = (int)(Math.random()*300);
  y = (int)(Math.random()*300);
  size = (int)(Math.random()*75)+ 25;
   }
  void showr() {
    fill((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
    ellipse(x,y,size,size);
  }
  void mover() {
    if( mousePressed) {
      x = (int)(Math.random()*1000);
      y = (int)(Math.random()*1000);
    }
    
    if(mouseX > x && mouseY > y) {
      x-=(int)(Math.random()*15)-4;
      y-=(int)(Math.random()*15)-4;
    }
    else if(mouseX < x && mouseY < y) {
      x+=(int)(Math.random()*15)-4;
      y+=(int)(Math.random()*15)-4;
    }
    else if(mouseX < x && mouseY > y) {
      x+=(int)(Math.random()*15)-4;
      y-=(int)(Math.random()*15)-4;
    }
    else if(mouseX > x && mouseY < y) {
      x-=(int)(Math.random()*15)-4;
      y+=(int)(Math.random()*15)-4;
    }
    else {
      x-= (int)(Math.random()*15)-4;
      y-= (int)(Math.random()*15)-4;
    }
 }
 void mousePressed() {
   
 } 
 }

