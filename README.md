## Outline
- [Overview](https://github.com/RobotFormAndFunction/BuffaloBytes/edit/main/README.md#overview)
- [Hardware Specifications](https://github.com/RobotFormAndFunction/BuffaloBytes/edit/main/README.md#hardware-specifications)
- Hardware Assembly
- Programming


# Overview
This repository contains Buffalo Bytes design, including the circuit board and mechanical hardware. The bill of materials and 3D design files are included. This README file details the hardware specifications and tutorials on getting started with the Buffalo Bytes platform.

# Hardware Specifications
This section details the electrical and mechanical hardware used in the Buffalo Bytes platform.

## Electrical hardware
The custom PCB of Buffalo Bytes is shown in the following figure. 

<p align="center">
<img width="355" alt="PCB_annotate" src="https://user-images.githubusercontent.com/98366383/192120304-c5c27094-9d2a-403d-add5-8a4309c0fccf.png">
</p>

The schematic of the board is shown here link, and Gerber files here.

### Bill of materials (BOM)
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

