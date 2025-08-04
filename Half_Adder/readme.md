 🔧 Half Adder (Verilog HDL)

This repository contains a simple Verilog HDL implementation and testbench for a **Half Adder** — a fundamental building block in digital electronics that adds two single-bit binary numbers.

## 📘 Description

A **Half Adder** performs binary addition of two 1-bit inputs and generates two outputs:
- **Sum (S)** = A ⊕ B (XOR)
- **Carry (C)** = A ⋅ B (AND)

### 💡 Truth Table

| A | B | Sum | Carry |
|---|---|-----|-------|
| 0 | 0 |  0  |   0   |
| 0 | 1 |  1  |   0   |
| 1 | 0 |  1  |   0   |
| 1 | 1 |  0  |   1   |

📌 Applications of Half Adder
1. Binary Addition Circuits
Used as the building block for designing Full Adders and multi-bit binary adders (e.g., ripple-carry adders).

2. ALU (Arithmetic Logic Unit)
Forms part of the core logic in processors to perform arithmetic operations.

3. Digital Counters
Helps in designing binary counters used in digital clocks, timers, and memory address counters.

4. Multiplexers / Demultiplexers (Internally)
Assists in logic control for arithmetic-based data selection or routing.