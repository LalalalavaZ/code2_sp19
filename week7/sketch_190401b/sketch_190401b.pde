void setup(){
  JSONObject data = loadJSONObject("https://samples.openweathermap.org/data/2.5/history/city?q=London,UK&appid=b1b15e88fa797225412429c1c50c122a1");
  JSONArray weather = data.getJSONArray("weather");
  JSONObject element = weather.getJSONObject(0);
  //int id = element.getInt("id");
  String main = element.getString("main");
  String description = element.getString("description");
  size(300,300);
  fill(255);
  background(0);
  text(main, 50,50);
  text(description, 50, 150);
}

void draw(){

}
