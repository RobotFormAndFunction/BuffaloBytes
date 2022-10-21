## Outline
- [Overview](https://github.com/RobotFormAndFunction/BuffaloBytes/edit/main/README.md#overview)
- [Hardware Specifications](https://github.com/RobotFormAndFunction/BuffaloBytes/edit/main/README.md#hardware-specifications)
- [Hardware Assembly](https://github.com/RobotFormAndFunction/BuffaloBytes#assembly)
- Programming


# Overview
This repository contains Buffalo Bytes design, including the circuit board and mechanical hardware. The bill of materials and 3D design files are included. This README file details the hardware specifications and tutorials on getting started with the Buffalo Bytes platform.

# Hardware Specifications
This section details the electrical and mechanical hardware used in the Buffalo Bytes platform.

## Electrical hardware
The custom PCB for Buffalo Bytes is detailed in [here](https://github.com/RobotFormAndFunction/BuffaloBytes/tree/main/ElectricalHardware), with the schematic of the board, Gerber files, and BOM (bill of materials). The microcontroller is an ESP8266x SoC (system-on-a-chip), which enables Wi-Fi, and general input/outputs. The summary of electrical hardware is below in the BOM. 

<details><summary>Bill of materials (BOM)</summary>

#### Passives

| Component | Value	| Quantity | Package size |
| :--- | --- | :---: | --- |
| Capacitor |	0.1 µF |	5 |	0603 |
| Capacitor |	8.6 pF |	1 |	0603 |
| Capacitor | 2.4 pF |	1 |	0603 |
| Capacitor |	10 µF |	3 |	0603 |
| Capacitor |	1 µF |	2 |	0603 |
| Capacitor |	5.6 pF |	2 |	0603 |
| Capacitor |	2.2 µF |	1 |	0603 |
| Capacitor |	220 pF |	1 |	0603 |
| Capacitor |	0.01 µF |	1 |	0603 |		
| Inductor | 1.5 nH |	1 |	0603 |		
| Resistor |	200 Ω |	1 |	0603 |
| Resistor |	12 kΩ |	5 |	0603 |
| Resistor |	1 kΩ |	1 |	0603 |
| Resistor |	4.7 kΩ |	4 |	0603 |		
| LED |	Red |	1 |	0603 |

#### Electronics

| Part | Part Number	| Quantity | Package size |
| :--- | --- | :---: | --- |
| Antenna |	AN9520-245 |	1 |	ANT-SMD_L9.5-W2.1 |
| Crystal - 26 MHz | ECS-260 |	1 |	4-SMD, no lead |
| MCU |	ESP8266x |	1 |	QFN-32 |
| Motor driver |	DRV8833 |	1 |	TSSOP-16 |
| IMU |	MPU6050 |	1 |	QFN-24 |
| LDO Voltage regulator |	TPS7A0533PDBZR | 1 |	SOT-23 |	
| Flash memory | ZB25VQ80 | 1 | SOIC-8 |
</details>


# Assembly
The exploded view of a Buffalo Byte is shown below.

<p align="center">
<img width="355" alt="Exploded View of Buffalo Bytes" src="https://user-images.githubusercontent.com/98366383/193653022-2081b63d-f911-4a9f-a0bb-ed56e06d5148.png">
</p>

First, the custom PCB needs to be populated (details in [Electrical Hardware](https://github.com/RobotFormAndFunction/BuffaloBytes/tree/main/ElectricalHardware)), and all of the mechanical hardware sourced, printed, and molded (details in [Mechanical Hardware](https://github.com/RobotFormAndFunction/BuffaloBytes/tree/main/MechanicalHardware)).

Each Buffalo Byte is assembled by sliding the motors into the chassis, attached the actuated wheels to the motors, and unactuated wheels to carbon fiber axles. The molded treads are wrapped around each actuated-unactuated wheel pair. The motor wires are connected to the custom PCB, and the battery connected to the PCB as well. Kapton tape is applied around the body to secure all parts. 

## Programming

To Buffalo Bytes Boards has 8 headers that goes directly into esp8266 burning fixture to upload bootlaoder or code serially. 

<p align="center">
<img width="355" alt="ESP8266 Fixture" src="![71oGzTALltL _AC_SL1500_](https://user-images.githubusercontent.com/106442702/197238303-69293733-17c0-4f1f-a2a7-45a2871f595e.jpg)">
</p>

The board can be bootloaded with both Arduino and MicroPython to make software development easy. The esp8266 chip comes with Arduino Bootloader, and we used thonnny software to bootload Micropython firmware on it.We have downloaded and uploaded the latest micropython firmware from official micropython website. (https://micropython.org/download/esp8266-1m/)
In this work, the board is flashed with the Arduino bootloader, and the Arduino IDE was used for software development. Alternatively, the SoC also enables wireless programming using Wi-Fi. To do this, a base script must be first uploaded through a serial connection, then additional programs can be sent via Wi-Fi.


