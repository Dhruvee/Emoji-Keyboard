#include <CapacitiveSensor.h>

CapacitiveSensor   cs_9_10 = CapacitiveSensor(9, 10);
CapacitiveSensor   cs_12_6 = CapacitiveSensor(12, 6);
CapacitiveSensor   cs_1_0 = CapacitiveSensor(1, 0);
CapacitiveSensor   cs_2_3 = CapacitiveSensor(2, 3);

void setup() {
  Serial.begin(9600);
}

void loop() {

  long total1 =  cs_9_10.capacitiveSensor(30);
  long total2 =  cs_12_6.capacitiveSensor(30);
  long total3 =  cs_1_0.capacitiveSensor(30);
  long total4 =  cs_2_3.capacitiveSensor(30);


  Serial.print(total1);
  Serial.print(",");
  Serial.print(total2);
  Serial.print(",");
  Serial.print(total3);
  Serial.print(",");
  Serial.print(total4);
  Serial.println();
  delay(50);
}
