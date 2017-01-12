import processing.serial.*;
Serial myPort;       
PImage img1;
PImage img2;
PImage img3;
PImage img4;
String[] nums;
String v;
int num1;
int num2;
int num3;
int num4;



void setup () {
  size(400, 400);
  background(0);
  String portName = Serial.list()[2];
  myPort= new Serial(this, portName, 9600);
  img1 = loadImage("happy.jpeg");
  img2 = loadImage("excited.png");
  img3 = loadImage("angry.png");
  img4 = loadImage("sad.png");
  frameRate(30);
}

void draw () {
  while ( myPort.available() > 0) 
  { 
    println(1);
    v = myPort.readStringUntil('\n'); 
    print(v);
    if (v == null) { 
      return;
    }
    nums = v.trim().split(",");
    num1 = Integer.parseInt(nums[0]);
    num2 = Integer.parseInt(nums[1]);
    num3 = Integer.parseInt(nums[2]);
    num4 = Integer.parseInt(nums[3]);
    println(num1, "-", num2, "-", num3, "-", num4);
  }
  if (num1>20) {
    image(img1, 0, 0, width, height);
  } else if (num2>20) {
    image(img2, 0, 0, width, height);
  } else if (num3>20) {
    image(img3, 0, 0, width, height);
  } else if (num4>30) {
    image(img4, 0, 0, width, height);
  } else {
    rect(0, 0, width, height);
    fill(0);
  }
}
