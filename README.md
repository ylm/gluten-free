#README

##Board features

* Stereo 4bits R-2R ladder DAC
* 3.5mm headphone jack
* On board mixer
* Price target: ~50$CAN
* I2S DAC?
* Powered by: USB! Battery!
* Connectors: USB! MIDI IN/OUT? TRS?
* Communication: USB!
* ADC?
* FPGA Configuration: Host! On SD Card
* Clock source?
* Input protection
* Expansion Header
* Screen?
* SD Card

##Featured ICs

* ice40up5k SG48I (8.72) `https://www.digikey.ca/en/products/detail/lattice-semiconductor-corporation/ICE40UP5K-SG48I/7785190`
* CY7C68016A-56LTXC (5.77) `https://www.digikey.ca/en/products/detail/CY7C68016A-56LTXC/2015-CY7C68016A-56LTXC-ND/9771742`
* BQ24074 (2.05) `https://www.ti.com/product/BQ24074`
* TPS63031 (1.78) `https://www.ti.com/product/TPS63031`
* DMG1016V-7 (0.662) `https://www.mouser.ca/ProductDetail/Diodes-Incorporated/DMG1016V-7`
* TPS62120DCNR (1.03) `https://www.digikey.ca/en/products/detail/texas-instruments/TPS62120DCNR/2407326`
* USB Conn: 10118194-0001LF (0.66) `https://www.digikey.ca/en/products/detail/amphenol-icc-fci/10118194-0001LF/2785389`
* Crystal (0.75) `https://www.digikey.ca/en/products/detail/murata-electronics/CSTNE24M0VH3C000R0/13553242`
* SD Card connector (1.56) `https://www.digikey.ca/en/products/detail/gct/MEM2061-01-188-00-A/9859612`
* Comparator (0.41) `https://www.digikey.ca/en/products/detail/nexperia-usa-inc/74LVC2G14GW-125/1231583`
* Clock (1.23) `https://www.mouser.ca/ProductDetail/Microchip-Technology/DSC6003JI2A-0480000?qs=sGAEpiMZZMsBj6bBr9Q9aa53dfhiSZy6HyD2biU23IhN9DU7PpWSmA%3D%3D`

##TODO

* SD card interface
* Undervoltage comparator
* R-2R DAC
* FX2LP to UP5K interface
* Make a decision on synth interface
* Select jack interfaces (TRS 1/4? 3.5mm?)

## Issues

* PCB form factor: 4 layers larger than 100mm is too expansive, but 2 layers is hard to route
* Communication interface: Low latency and high enough
* Price
* Number of IOs available
