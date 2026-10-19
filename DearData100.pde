
int[] unlockReasons = { //array to hold data points
  0, 1, 0, 2, 3,
  1, 0, 4, 2, 1,
  0, 3, 1, 2, 0,
  4, 1, 0, 3, 2
}; // these numbers will represent different categories, change this once ive got all data collected

void setup() {
  size(600, 400);
  background(245);
  noStroke();

  for (int i = 0; i < unlockReasons.length; i++) { //goes through every data point in array
    int x = 60 + (i % 10) * 50;
    int y = 60 + (i / 10) * 50;

    fill(colourForReason(unlockReasons[i])); //calls colour picking method
    ellipse(x, y, 28, 28); //draws circle to represent data
  }

  fill(30);
  textSize(18);
  text("My Phone Unlocks", 30, 25); //title
}

// method to return a colour for each category of unlock
color colourForReason(int reason) {
  if (reason == 0) return color(232, 121, 169);
  if (reason == 1) return color(245, 158, 66);
  if (reason == 2) return color(124, 107, 214);
  if (reason == 3) return color(86, 168, 154);
  return color(119, 119, 119);
}
