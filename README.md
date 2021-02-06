BL602 SVD repo
===================

This repository contains a CMSIS-SVD description of the BL602 SOC by Boufallo labs.  
It is based on the original SVD as provided by Boufallo in their SDK with additions by the pine64 community to add missing peripherals, fix existing ones, as well as adding documentation and improving conformance to the SVD specification.

This SVD is being maintained primarily for automatic code and documentation generation, but it can also be used for improved debug information for peripheral registers


Contributing to this project
--------------------------

In order to keep the SVD in a state that is acceptable for downstream use, there are some scripts to run conformance tests inside the scripts directory.  
These scripts will be run via Continuous Integration before your pull request will be merged.

Hardware
--------
- [Pine64 Documentation](https://pine64.github.io/bl602-docs)
- [Official Documents](https://github.com/bouffalolab/bl_docs): Includes detailed core and peripheral documentation
- [BL602/604 Datasheet](mirrored/BL602_BL604_DS_1.6_en.pdf) (34 pages): Includes
  pinout, memory map, and general peripheral descriptions but no detailed
  functional specification or register listings.
- [BL602/604 Reference Manual](mirrored/BL602_BL604_RM_1.2_en.pdf) (209 pages):
  Includes register map, clock tree and other information about implementing
  BL602/BL604.
- [soc602_reg.svd][1]: Contains a seemingly-complete register listing, with
  names but no descriptions, for the BL602.
- [Hardware Notes](hardware_notes): Additional information
  gathered from the SDK repository and elsewhere on the internet.

[1]: https://github.com/pine64/bl_iot_sdk/tree/master/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/soc602_reg.svd
