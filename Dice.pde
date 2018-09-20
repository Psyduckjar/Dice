void setup() {
  size(500,500);
}
// doesnt show anything when i run it
// fix

void draw() {
  for (int x = 0; x < 500; x = x + 5) {
  dice bro = new dice(x, 500);
  bro.show();
}
  
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
    if((Math.random() < .16)) {
      ellipse(cubeX, cubeY, 5,5);
    }
    else if(Math.random() > .16 && Math.random() < .3) {
      ellipse(cubeX - 1,cubeY - 1,5,5);
      ellipse(cubeX + 1,cubeY + 1,5,5);
    }
    else if(Math.random() > .3 && Math.random() < .5) {
      ellipse(cubeX - 1,cubeY - 1,5,5);
      ellipse(cubeX + 1,cubeY + 1,5,5);
      ellipse(cubeX,cubeY,5,5);
    }
  }

  
  void show() {
    fill(222,184,135);
    rect(cubeX,cubeY,(cubeX + 4),(cubeY + 4));
  }
   
}
