Bacteria [] dots;
 void setup()   
 {     
   size(1000,1000);
   dots = new Bacteria[20];
   for(int i = 0; i < dots.length; i++){
     dots[i] = new Bacteria();
   }
 }   
 void draw()   
 {    
   
   background(0);
   for(int o = 0; o < dots.length; o++){
     dots[o].move();
     dots[o].show();
   }
 }  
 class Bacteria    
 {     
   int x,y, size;
   Bacteria() {
  x = (int)(Math.random()*300);
  y = (int)(Math.random()*300);
  size = (int)(Math.random()*75);
   }
  void show() {
    fill((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
    ellipse(x,y,size,size);
  }
  void move() {
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
 } 
