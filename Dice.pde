void setup() {
  size(500,500);
}
dice bro = new dice(2,2);
void draw() {
  bro.show();
}


class dice {
  int cubeX, cubeY, secretNumber;
  dice(int x, int y) 
  {
    secretNumber = ((int)(Math.random()*6)+1);
    cubeX = x;
    cubeY = y;
  }
  void roll() {
    redraw();
  }

  
  void show() {
    fill(222,184,135);
    rect(cubeX,cubeY,(cubeX + 4),(cubeY +4));
  }
   
}
