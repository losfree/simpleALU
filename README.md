# simpleALU
A design of 32-bit ALU  
Base on Quartus Prime 17.1 and VHDL

## Composition
![ALU.png](https://kyun.ltyuanfang.cn/tc/2020/10/21/0c69cfd288d43.png)  

## Connecting logic
![aluDiag.bmp](https://kyun.ltyuanfang.cn/tc/2020/10/21/282a1b86cf1d8.bmp)  
(The jDiag unit is only a logical unit but not really exist. It is realized in top design)  

## Description of each part
1. fd32
  - fd32 is the arithmetical unit consisting of a cascade of fd(1-bit fullAdder unit)
2. logic32
  - logic32 is the logical unit consisting of 32 logic(1-bit logical unit) in parallel
3. shift32
  - shift32 is the shift unit
4. optrans
  - optrans is the decode unit which decode instructions into the corresponding control signal
