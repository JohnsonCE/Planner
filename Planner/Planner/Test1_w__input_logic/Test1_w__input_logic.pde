ArrayList<String> myList=new ArrayList<String>();
//String dates[][]=new String[12][31];
String typed="";
String s;
String e="";
int count;

void setup(){
  size(1300, 1000);
  
}

void draw(){
  
 // fill(0);
  background(255);
   text(e, 250, 170); 
  textSize(40);
  text("Type in your data:", 100, 35, 160);
  text(typed, 100, 80, 150);
 //background(255);
  fill(255);
  rect(200, 100, 900, 800);//1 background, 730 units to work with
  rect(250, 170, 350, 160);//left1
  rect(700, 170, 350, 160);//right1
  rect(250, 352.5, 350, 160);//left2  seperated by 22.5 units
  rect(700, 352.5, 350, 160);//right2
  rect(250, 535, 350, 160);//left3
  rect(700, 535, 350, 160);//right3
  rect(250, 717.5, 350, 160);//left 4
  
  
}
void keyPressed(){
  typed+=key;
  if(key=='p'){
    e=myList.get(0);
   
  }
  if(key==RETURN||key==ENTER){
    println("it works!");
    s=typed;
    myList.add(s);
    typed="";
  }else if(key==BACKSPACE){
    typed="";
  }
  println(s);
  
  
}
  
  