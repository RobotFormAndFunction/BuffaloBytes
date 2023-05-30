#include "Wire.h"
#include <MPU6050_light.h>

MPU6050 mpu(Wire);

int motorSpeed1 = 200;
int motorSpeed2 = 255;

int m11 = 12;   //Motor1 1st output
int m12 = 14;   //Motor1 2nd output
int m21 = 13;   //Motor2 1st output
int m22 = 15;  //Motor2 2nd output

int yaw;
float angle = 0;
unsigned long timer = 0;
int loopcount;

void setup() {
  Serial.begin(115200);
  Wire.begin();

  byte status = mpu.begin();
  Serial.print(F("MPU6050 status: "));
  Serial.println(status);
  while(status!=0){ } // stop everything if could not connect to MPU6050

  Serial.println(F("Calculating offsets, do not move MPU6050"));
  delay(1000);
  // mpu.upsideDownMounting = true; // uncomment this line if the MPU6050 is mounted upside-down
  mpu.calcOffsets(); // gyro and accelero
  delay(2000);
  Serial.println("Done!\n");

  pinMode(m11, OUTPUT);
  pinMode(m12, OUTPUT);
  pinMode(m21, OUTPUT);
  pinMode(m22, OUTPUT);
  
}

void loop() {

  

  loopcount=0;
  
  //unsigned long starttime = millis();
  //unsigned long endtime = starttime;
  while ((loopcount) <=600) // do this loop for up to 1000mS
  {
  // code here
  mpu.update();

  int yaw = mpu.getAngleZ();  

  Serial.print("yaw");
  Serial.println(yaw);

  if (-10<yaw<10){
    analogWrite(m11, motorSpeed1);   // right
    analogWrite(m12, 0);   
    analogWrite(m21, motorSpeed2);   // left
    analogWrite(m22, 0);   
    //Serial.print('1');
  } 

  if (yaw>10){ // left turn
    analogWrite(m11, 0);   // right
    analogWrite(m12, 0);    
    analogWrite(m21, motorSpeed2);   // left
    analogWrite(m22, 0);   
    //Serial.print('2');
  } 

  if (yaw<-10){  //right turn
    analogWrite(m11, motorSpeed1);   // right
    analogWrite(m12, 0);   // 
    analogWrite(m21, 0);   // left 
    analogWrite(m22, 0);   // 
    //Serial.print('3');
  }

  loopcount = loopcount+1;
  //endtime = millis();
  }  
  

  turn();
  stop();
  calibrate();
  
}


void turn(){

  analogWrite(m11, 0);   // right
  analogWrite(m12, 0);    
  analogWrite(m21, motorSpeed2);   // left
  analogWrite(m22, 0); 
  delay(150);

}

void stop(){
  analogWrite(m11, 0);   // right
  analogWrite(m12, 0);    
  analogWrite(m21, 0);   // left
  analogWrite(m22, 0);
  delay(200);
}

void calibrate(){

  Serial.println(F("Calculating offsets, do not move MPU6050"));
  delay(1000);
  // mpu.upsideDownMounting = true; // uncomment this line if the MPU6050 is mounted upside-down
  mpu.calcOffsets(); // gyro and accelero
  delay(2000);
  Serial.println("Done!\n");

}

