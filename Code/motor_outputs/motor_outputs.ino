
int m11 = 14;   //Motor1 1st output
int m12 = 12;   //Motor1 2nd output
int m21 = 13;   //Motor2 1st output
int m22 = 15;  //Motor2 2nd output
 
void setup() {
  // initialize digital pin led as an output
  pinMode(m11, OUTPUT);
  pinMode(m12, OUTPUT);
  pinMode(m21, OUTPUT);
  pinMode(m22, OUTPUT);
}
 
void loop() {
  digitalWrite(m11, HIGH);   // turn the LED on 
  digitalWrite(m12, LOW);   // turn the LED off 
  digitalWrite(m21, HIGH);   // turn the LED on 
  digitalWrite(m22, LOW);   // turn the LED off

}