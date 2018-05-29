int dates[][];
void setup(){
  size(1300, 1000);
  
}

void draw(){
  background(255);
  rect(200, 100, 900, 800);//1 background, 730 units to work with
  rect(250, 170, 350, 160);//left1
  rect(700, 170, 350, 160);//right1
  rect(250, 352.5, 350, 160);//left2  seperated by 22.5 units
  rect(700, 352.5, 350, 160);//right2
  rect(250, 535, 350, 160);//left3
  rect(700, 535, 350, 160);//right3
  rect(250, 717.5, 350, 160);//left 4
}