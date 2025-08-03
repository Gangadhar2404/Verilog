# All Gates Design – Verilog HDL

## 📌 Project Overview  
This project implements a unified **Verilog HDL** module that realizes six fundamental logic gates: **AND**, **OR**, **XOR**, **XNOR**, **NAND**, and **NOR**. The design is fully synthesizable and verified through a simulation testbench with waveform analysis. This serves as a foundational reference for digital logic design, FPGA prototyping, and ASIC synthesis.

## 🔍 Technical Description  
The `allgates` module accepts two single-bit inputs (`a` and `b`) and produces outputs corresponding to all six gate functions. It uses **continuous assignments** for combinational logic, ensuring minimal propagation delay and synthesis-friendly structure. The design is **technology-independent**, compatible with both FPGA and ASIC flows, and has been verified through exhaustive input simulation.

### Logic Implemented
| Signal | Function | Expression      |
|--------|----------|-----------------|
| `ag`   | AND      | `a & b`         |
| `og`   | OR       | `a | b`         |
| `xg`   | XOR      | `a ^ b`         |
| `xng`  | XNOR     | `~(a ^ b)`      |
| `ng`   | NAND     | `~(a & b)`      |
| `nrg`  | NOR      | `~(a | b)`      |

### Truth Table
| a | b | AND | OR | XOR | XNOR | NAND | NOR |
|---|---|-----|----|-----|------|------|-----|
| 0 | 0 |  0  | 0  |  0  |  1   |  1   | 1   |
| 0 | 1 |  0  | 1  |  1  |  0   |  1   | 0   |
| 1 | 0 |  0  | 1  |  1  |  0   |  1   | 0   |
| 1 | 1 |  1  | 1  |  0  |  1   |  0   | 0   |


