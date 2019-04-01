//table.loadTable("data.csv");

//SWITCH
int num = 0;
void setup(){
  size(200,200);
}

void keyPressed(){
  switch(num){
     case 0:
       background(0);
       textSize(32);
       break;
     case 1:
        background(50,0,0);
        break;
     case 2:
       background(100,0,0);
       break;
     case 3:
       background(150,0,0);
       break;
     case 4:
       background(200,0,0);
       break;
     case 5:
       background(250,0,0);
       break;
   }
   //changeState();
}

void draw(){
}



//void changeState() {
//  num++;
//}
