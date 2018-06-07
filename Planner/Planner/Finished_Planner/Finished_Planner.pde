ArrayList<String> myList4=new ArrayList<String>();
String typed="";//Temp storage of words typed
int x=0;
int y=0;
String s;
int count=0;
String s4="";

void setup() {
  size(1300, 1000, OPENGL);
}

void draw() {
  background(0, 0, 100);
  fill(255);
  rect(200, 100, 900, 800);//1 background, 730 units to work with
  rect(250, 170, 350, 160);//left1
  rect(700, 170, 350, 160);//right1
  rect(250, 352.5, 350, 160);//left2  seperated by 22.5 units
  rect(700, 352.5, 350, 160);//right2
  rect(250, 535, 350, 160);//left3
  rect(700, 535, 350, 160);//right3
  rect(250, 717.5, 350, 160);//left 4

  fill(200);
  textSize(20);
  text("After typing, press ENTER key", 775, 123);
  text("Then click mouse to display data", 755, 143);
  text("Repeat", 875, 163);
  
  fill(10);
  //Text
  text("Type in your data:", 235, 128);
  
  //Temp data that shows what will be printed
  text(typed, 250, 165);
  
  //Displays previous data
  if (count>0) {
    int x0123=260;
    int y04=200;
    int y15=383;
    int y26=565;
    int y3=748;
    int x456=710;

    for (int i=count-1; i>=0; i--) {
      String tS4=myList4.get(i);
      if (i==6) {
        text(tS4, x456, y26);
      }
      if (i==5) {
        text(tS4, x456, y15);
      }
      if (i==4) {
        text(tS4, x456, y04);
      }
      if (i==3) {
        text(tS4, x0123, y3);
      }
      if (i==2) {
        text(tS4, x0123, y26);
      }
      if (i==1) {
        text(tS4, x0123, y15);
      }
      if (i==0) {
        text(tS4, x0123, y04);
      }
    }
  }
  text(s4, x, y); //Printed text
}

void keyPressed() {
  typed+=key;
  if (key==RETURN||key==ENTER) {
    println("it works!");
    s=typed;
    myList4.add(s); 
    typed="";
  } else if (key==BACKSPACE) {
    typed="";
  }
  println(myList4);
}

void changeX() {
  x=260;
  if (count>=4) {
    x=710;
  }
}

void changeY() {
  if (count==0||count==4) {
    y=200;
  }
  if (count==1|| count==5) {
    y=383;
  }
  if (count==2|| count==6) {
    y=565;
  }
  if (count==3) {
    y=748;
  }
}

void q4() {
  int e=count;
  if (count==0) {
    s4+=myList4.get(e);
  }
  if (count==1) {
    s4+=myList4.get(e);
  }
  if (count==2) {
    s4+=myList4.get(e);
  }
  if (count==3) {
    s4+=myList4.get(e);
  }
  if (count==4) {
    s4+=myList4.get(e);
  }
  if (count==5) {
    s4+=myList4.get(e);
  }
  if (count==6) {
    s4+=myList4.get(e);
  }
}
void changeCount() {
  count++;
}

void mousePressed() {
  s4="";
  changeX();
  changeY();
  q4();
  changeCount();
  println(count);
}