int diceSize = 100;
boolean pepe = false;
void setup() {
  size(1000,1000);
  noLoop();
}
// 
// fixed error

void draw() {
  diceman();
  lightning();
  
}

void lightning() 
{
  //wait no im too lazy
}

void diceman() {
  background(0);
  int total = 0;
  for (int x = diceSize; x < 1000 - diceSize; x = x + diceSize) {
    for(int y = diceSize; y < 1000 - diceSize; y = y + diceSize) {
  dice bro = new dice(x , y);
  bro.roll();
  bro.show();
  total = total + bro.gameTime;
    }
 }
 System.out.println(total);
 fill(173,255,47);
 text(("total:" + total), 500, 950);
}
  



void mousePressed() {
  redraw();
}
//the model of a single die
class dice {
  int g, h, gameTime = ((int)(Math.random()*6)+1);
  dice(int x, int y) 
  {
    g = x;
    h = y;
  }
   void roll() {
   gameTime = ((int)(Math.random()*6)+1);
   }
   
   
   void show() {
    fill(222,184,135);
    rect(g,h,diceSize,diceSize);
     //if it rolls a 1
    if(gameTime == 1) {
     fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256))); 
     ellipse(g + diceSize/2, h + diceSize/2 ,diceSize/5,diceSize/5);
    }
    //if it rolls a 2
    else if(gameTime == 2) {
     fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
      ellipse(g + diceSize/4,h + diceSize/4,diceSize/5,diceSize/5);
     ellipse(g + diceSize/1.3,h + diceSize/1.3,diceSize/5,diceSize/5);
    }
    //if it rolls a 3
    else if(gameTime == 3) {
      fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
     ellipse(g + diceSize/4,h + diceSize/4,diceSize/5,diceSize/5);
     ellipse(g + diceSize/2,h + diceSize/2,diceSize/5,diceSize/5);
     ellipse(g + diceSize/1.3,h + diceSize/1.3,diceSize/5,diceSize/5);
    }
    //if it rolls a 4
    else if(gameTime == 4) {
     fill(0,244,0);
     ellipse(g + diceSize/4,h + diceSize/4,diceSize/5,diceSize/5);
     ellipse(g + diceSize/4,h + diceSize/1.3,diceSize/5,diceSize/5);
     ellipse(g + diceSize/1.3,h + diceSize/4,diceSize/5,diceSize/5);
     ellipse(g + diceSize/1.3,h + diceSize/1.3,diceSize/5,diceSize/5);
      
  }
    //if it rolls a 5
    else if(gameTime == 5){
      fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256)));
      ellipse(g + diceSize/2,h + diceSize/2,diceSize/5,diceSize/5);
      ellipse(g + diceSize/4,h + diceSize/1.3,diceSize/5,diceSize/5);
      ellipse(g + diceSize/1.3,h + diceSize/4,diceSize/5,diceSize/5);
      ellipse(g + diceSize/1.3,h + diceSize/1.3,diceSize/5,diceSize/5);
      ellipse(g + diceSize/4,h + diceSize/4,diceSize/5,diceSize/5);
    }
    //if it rolls a 6
    else if(gameTime == 6) {
      fill(((int)(Math.random()*256)),((int)(Math.random()*256)),((int)(Math.random()*256))); 
      ellipse(g + diceSize/2,h + diceSize/4,diceSize/5,diceSize/5);
       ellipse(g + diceSize/4,h + diceSize/1.3,diceSize/5,diceSize/5);
       ellipse(g + diceSize/1.3,h + diceSize/4,diceSize/5,diceSize/5);
       ellipse(g + diceSize/1.3,h + diceSize/1.3,diceSize/5,diceSize/5);
       ellipse(g + diceSize/4,h + diceSize/4,diceSize/5,diceSize/5);
       ellipse(g + diceSize/2,h + diceSize/1.3,diceSize/5,diceSize/5);
    }
  }
  
  

}
