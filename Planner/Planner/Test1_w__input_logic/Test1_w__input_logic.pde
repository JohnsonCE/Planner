ArrayList<String> myList4=new ArrayList<String>();
//String dates[][]=new String[12][31];
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
  background(0);
  fill(255);
  rect(200, 100, 900, 800);//1 background, 730 units to work with
  rect(250, 170, 350, 160);//left1
  rect(700, 170, 350, 160);//right1
  rect(250, 352.5, 350, 160);//left2  seperated by 22.5 units
  rect(700, 352.5, 350, 160);//right2
  rect(250, 535, 350, 160);//left3
  rect(700, 535, 350, 160);//right3
  rect(250, 717.5, 350, 160);//left 4
  
  fill(0);
  smooth();
  textSize(30);
  
  text("Type in your data:", 235, 125);
  
  text(typed, 250, 200);
  //Temp data that shows what will be printed
  text(s4, x, y); //Printed text
  //println("mouseX " +mouseX);
  //println("mouseY " +mouseY);
}
void keyPressed() {
  typed+=key;
  if (key=='p') {
    //e=myList.get(0);
  }
  if (key==RETURN||key==ENTER) {
    println("it works!");
    s=typed;
    //e=s;
    myList4.add(s);
    println(count);
    typed="";
  } else if (key==BACKSPACE) {
    typed="";
  }
  println(s);
}
void changeX(){
  x=260;
  if(count==5){
    x=710;
  }
}
void changeY(){
  y=200;//gotta get this to change after mouse clicked
    if(count==1|| count==5){
     y=260;
    }
  }

void q4() {
  
  if(count==0){
    s4=s;
  }
  if(count>=1){
   s4+=myList4.get(count);//error
  }
   count+=1;
   print(count);
}

void mousePressed() {
  q4();
}