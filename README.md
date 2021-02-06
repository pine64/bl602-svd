BL602 SVD repo
===================

This repository contains a CMSIS-SVD description of the BL602 SOC by Boufallo labs.  
It is based on the original SVD as provided by Boufallo in their SDK with additions by the pine64 community to add missing peripherals, fix existing ones, as well as adding documentation and improving conformance to the SVD specification.

This SVD is being maintained primarily for automatic code and documentation generation, but it can also be used for improved debug information for peripheral registers


Contributing to this project
--------------------------

Contributions welcome!
In order to keep the SVD in a state that is acceptable for downstream use, there are some scripts to run conformance tests inside the scripts directory.  
These scripts will be run via Continuous Integration before your pull request will be merged.

Reference material
--------
- [Pine64 Documentation](https://pine64.github.io/bl602-docs): Documentation maintained by the community
- [Official Documents](https://github.com/bouffalolab/bl_docs): Includes detailed core and peripheral documentation
- [soc602_reg.svd][1]: Upstream source for this SVD

[1]: https://github.com/pine64/bl_iot_sdk/tree/master/components/bl602/bl602_std/bl602_std/Device/Bouffalo/BL602/Peripherals/soc602_reg.svd
