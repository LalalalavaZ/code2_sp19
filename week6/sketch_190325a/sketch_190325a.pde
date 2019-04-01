//state = screen
//txt to display for each screen (state representation)
////options to choose (state transition)
//string for each text
//string for each option - correspond to a keypress

int state = 0;
String descr[] = {
  "state 0",
  "state 1",
  "state 2"
};

String option[][] = {
  {"go1", "go2"},
  {"option1", "option2"},
  {"option1", "option2"}
};

int[][] optionTargets= {
  {1,2},{0},{1,0}
};

void setup(){
  size(600,600);
}

void draw(){
  background(255);
  textSize(35);
  fill(0);
  text(descr[state], 40,40, 450, 300);
  
  textSize(20);
  text(option[state][0], 40, 480);
  text(option[state][1], 40, 510);
  int i = 0;
  for(String option: option[state]){
      text(option, 40, 450 + i * 50);
      i++;
  }
}

void keyPressed(){
  if(keyCode == 49){
    println("1pressed");
    state = optionTargets[state][0];
  }
  if(keyCode == 50){
    println("2pressed");
    state = optionTargets[state][1];
  }
}
