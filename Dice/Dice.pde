Die dice1;
Die dice2;
Die dice3;
Die dice4;
Die dice5;
Die dice6;
Die dice7;
Die dice8;
Die dice9;

void setup(){
  //no loop means that draw is only called once
  //OR if you ever call redraw()
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
  
}

void draw(){
  //your code here
  background(78, 193, 83);
  dice1.show();
  dice2.show();
  dice3.show();
  dice4.show();
  dice5.show();
  dice6.show();
  dice7.show();
  dice8.show();
  dice9.show();
}

void mousePressed(){
  //No real work for you to do here
  //calling redraw will do the necessary work 
  //to redraw your processing script
  redraw();
}


//Dice: Models a single 6 sided dice cube
//Each instance should randomly assign itself a value from 1 to 6
class Die {
	//variable declarations for your Die instances here
  int outcome;
  int x_pos, y_pos;
	
	//constructor
	Die(int x, int y){
    x_pos = x;
    y_pos = y;
		//variable initializations here
	}
	
	//Simulate a roll of a die
	void roll(){
		//your code here, 
		//should randomly assign a value from 1 to 6
    int outcome = (int)Math.random() * 6 + 1;
	}

  
	
	/*
	  Use the randomly assigned roll value to draw the face of a die
	*/
	void show(){
		//your code here
    pushMatrix();
    fill(255);
    rect(x_pos, y_pos, 100, 100, 10);
    fill(0);
    ellipse(x_pos + 50, y_pos + 50, 10, 10);
    popMatrix();
	}
}
