// unlock reasons will be categorised into groups first and declared as named constants so i know what is being 
// represented in the array. final means the value cant be changed once assigned.
final int messaging = 0; // this includes messages, whatsapp, discord
final int social_media = 1; // this includes snapchat, instagram and tiktok
final int productivity = 2; // this includes alarm, phone, maps, deliveroo, safari
final int entertainment = 3; // this includes spotify, reading, minecraft, clash royal, roblox

// change this later so it takes the data from my excel file, and creates an array according to the file.
int[] unlockReasons = { //array to hold data categories
  0, 1, 0, 2, 3,
  1, 0, 4, 2, 1,
  0, 3, 1, 2, 0,
  4, 1, 0, 3, 2
}; // these numbers will represent the different categories

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
