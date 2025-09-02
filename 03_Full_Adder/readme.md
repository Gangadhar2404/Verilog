This repository contains a Verilog HDL implementation and testbench for a **Full Adder** — a key combinational circuit used in binary arithmetic operations.

## 📘 Description

A **Full Adder** performs the addition of three 1-bit binary inputs:
- **A**, **B** – Data inputs
- **Cin** – Carry input (from a previous stage)

It produces:
- **Sum** = A ⊕ B ⊕ Cin
- **Carry** = (A ⊕ B) ⋅ Cin + A ⋅ B

### 💡 Truth Table

| A | B | Cin | Sum | Carry |
|---|---|-----|-----|--------|
| 0 | 0 |  0  |  0  |   0    |
| 0 | 0 |  1  |  1  |   0    |
| 0 | 1 |  0  |  1  |   0    |
| 0 | 1 |  1  |  0  |   1    |
| 1 | 0 |  0  |  1  |   0    |
| 1 | 0 |  1  |  0  |   1    |
| 1 | 1 |  0  |  0  |   1    |
| 1 | 1 |  1  |  1  |   1    |
