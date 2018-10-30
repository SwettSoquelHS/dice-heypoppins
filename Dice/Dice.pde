Die dice1;
Die dice2;
Die dice3;
Die dice4;
Die dice5;
Die dice6;
Die dice7;
Die dice8;
Die dice9;
int sum;

void setup() {
  size(500, 600);
  noLoop();
  dice1 = new Die(0, 0);
  dice2 = new Die(200, 0);
  dice3 = new Die(400, 0);
  dice4 = new Die(0, 200);
  dice5 = new Die(200, 200);
  dice6 = new Die(400, 200);
  dice7 = new Die(0, 400);
  dice8 = new Die(200, 400);
  dice9 = new Die(400, 400);
  sum = 0;
}

void draw() {
  background(78, 193, 83);
  dice1.roll();
  dice2.roll();
  dice3.roll();
  dice4.roll();
  dice5.roll();
  dice6.roll();
  dice7.roll();
  dice8.roll();
  dice9.roll();

  dice1.show();
  dice2.show();
  dice3.show();
  dice4.show();
  dice5.show();
  dice6.show();
  dice7.show();
  dice8.show();
  dice9.show();
  
  textSize(20);
  text("The total is: " + sum, 100, 550);
}

void mousePressed() {
  sum = 0;
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
  int outcome;
  int x_pos, y_pos;

  //constructor
  Die(int x, int y) {
    x_pos = x;
    y_pos = y;
  }

  //Simulate a roll of a die
  void roll() {
    outcome = (int)(Math.random() * 6 + 1);
  }



  /*
	  Use the randomly assigned roll value to draw the face of a die
   	*/
  void show() {
    fill(255);
    rect(x_pos, y_pos, 100, 100, 15);
    fill(0);
    if (outcome == 1) {
      ellipse(x_pos + 50, y_pos + 50, 10, 10);
      sum += 1;
    } else if (outcome == 2) {
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 80, y_pos + 80, 10, 10);
      sum += 2;
    } else if (outcome == 3) {
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 50, y_pos + 50, 10, 10);
      ellipse(x_pos + 80, y_pos + 80, 10, 10);
      sum += 3;
    } else if (outcome == 4) {
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 80, 10, 10);
      ellipse(x_pos + 80, y_pos + 80, 10, 10);
      ellipse(x_pos + 80, y_pos + 20, 10, 10);
      sum += 4;
    } else if (outcome == 5) {
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 80, 10, 10);
      ellipse(x_pos + 50, y_pos + 50, 10, 10);
      ellipse(x_pos + 80, y_pos + 80, 10, 10);
      ellipse(x_pos + 80, y_pos + 20, 10, 10);
      sum += 5;
    } else {
      ellipse(x_pos + 20, y_pos + 20, 10, 10);
      ellipse(x_pos + 20, y_pos + 80, 10, 10);
      ellipse(x_pos + 80, y_pos + 50, 10, 10);
      ellipse(x_pos + 80, y_pos + 20, 10, 10);
      ellipse(x_pos + 80, y_pos + 80, 10, 10);
      ellipse(x_pos + 20, y_pos + 50, 10, 10);
      sum += 6;
    }
  }
}
