# Mechanical hardware

The mechanical hardware of the Buffalo Bytes requires both commercial off-the-shelf (COTS) hardware and custom hardare. The COTS hardware is listed below in the bill of materials (BOM) and the STL files for the custom hardware in this repository. 

## COTS hardware
| Component| Quantity | Comment |
| :--- | :---: | --- |
| Two-stage (26:1) planetary gearmotor |	2 |	Available from Pololu |
| LiPo Battery (3.7 V @ 100 mAh) |	1 |	Available on Amazon |
| Carbon fiber rod | 1 | 1 mm diameter cut to size |
| Silicone polymer | 1 | DragonSkin 10 from Smooth-On |

## Custom hardware
One copy of the [chassis.stl](https://github.com/RobotFormAndFunction/BuffaloBytes/blob/main/MechanicalHardware/chassis.stl) and four copies of the [wheel.stl](https://github.com/RobotFormAndFunction/BuffaloBytes/blob/main/MechanicalHardware/wheel.stl) files need to be printed on an SLA printer. We used an AnyCubic Mono SE printer. The parts were printed according to the directions for the printer, and post-processed by rinsing with IPA, and cured in a UV light chamber. Other 3D printing options may require different processing.

The [tread_mold.stl](https://github.com/RobotFormAndFunction/BuffaloBytes/blob/main/MechanicalHardware/tread_mold.stl) file was printed on an FDM printer, we used a Raise3D E2 printer. After printing, a two-part silicone rubber (DragonSkin 10) was mixed and poured into the mold and allowed to cure overnight.


### Assembly
The exploded view of a Buffalo Byte is shown below.

<p align="center">
<img width="355" alt="Exploded View of Buffalo Bytes" src="https://user-images.githubusercontent.com/98366383/193653022-2081b63d-f911-4a9f-a0bb-ed56e06d5148.png">
</p>
