# ➖ Full Subtractor (Verilog HDL)

This repository contains the Verilog HDL implementation and testbench for a **Full Subtractor** — a combinational logic circuit used to subtract three binary inputs: two bits and a borrow input.

## 📘 Description

A **Full Subtractor** performs binary subtraction with three inputs:
- **A** – Minuend
- **B** – Subtrahend
- **Cin** – Borrow-in (from previous stage)

It produces:
- **Difference (D)** = A ⊕ B ⊕ Cin
- **Borrow-out (Br)** = (~A & (B ⊕ Cin)) | (B & Cin)

### 💡 Truth Table

| A | B | Bin | Difference (D) | Borrow (Br) |
|---|---|-----|----------------|-------------|
| 0 | 0 |  0  |       0        |      0      |
| 0 | 0 |  1  |       1        |      1      |
| 0 | 1 |  0  |       1        |      1      |
| 0 | 1 |  1  |       0        |      1      |
| 1 | 0 |  0  |       1        |      0      |
| 1 | 0 |  1  |       0        |      0      |
| 1 | 1 |  0  |       0        |      0      |
| 1 | 1 |  1  |       1        |      1      |