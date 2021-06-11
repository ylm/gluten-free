#README

##Board features

* Stereo Sigma-Delta DAC
* 3.5mm headphone jack
* Multiple output jacks for different levels of output: headphone vs line out for live.
* Price target: ~50$CAN
* I2S DAC?
* Powered by: USB! Battery!
* Connectors: USB! PMOD and some debug
* Communication: USB!
* FPGA Configuration: Host! On SD Card
* Clock source?
* Input protection
* Expansion Header
* Screen?
* SD Card
* AD8531 for op-amp and DS1881 as digital pot

##Featured ICs

* ice40up5k SG48I (8.72) `https://www.digikey.ca/en/products/detail/lattice-semiconductor-corporation/ICE40UP5K-SG48I/7785190`
* BQ24074 (2.05) `https://www.ti.com/product/BQ24074`
* TPS63031 (1.78) `https://www.ti.com/product/TPS63031`
* DMG1016V-7 (0.662) `https://www.mouser.ca/ProductDetail/Diodes-Incorporated/DMG1016V-7`
* TPS62120DCNR (1.03) `https://www.digikey.ca/en/products/detail/texas-instruments/TPS62120DCNR/2407326`
* USB Conn: 10118194-0001LF (0.66) `https://www.digikey.ca/en/products/detail/amphenol-icc-fci/10118194-0001LF/2785389`
* SD Card connector (1.56) `https://www.digikey.ca/en/products/detail/gct/MEM2061-01-188-00-A/9859612`
* Clock (1.23) `https://www.mouser.ca/ProductDetail/Microchip-Technology/DSC6003JI2A-0480000?qs=sGAEpiMZZMsBj6bBr9Q9aa53dfhiSZy6HyD2biU23IhN9DU7PpWSmA%3D%3D`

##TODO

* Select push buttons and more LEDs for interface
** Chose how many buttons (on top of the keypads)
** Chose how many LEDs
* Make a decision on synth interface
* Design DAC LPF
* Improve PS design for battery monitoring
* Add power switch
* Might replace ws2812b with SK9822
* Finish up5k supply

## Issues

TBD
