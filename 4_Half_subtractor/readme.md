# ➖ Half Subtractor (Verilog HDL)

This repository contains a Verilog HDL implementation and testbench for a **Half Subtractor** — a basic combinational circuit used for binary subtraction of two single-bit inputs.

## 📘 Description

A **Half Subtractor** performs binary subtraction of two bits:
- **Inputs**: A (minuend), B (subtrahend)
- **Outputs**:
  - **Difference (D)** = A ⊕ B
  - **Borrow (Br)** = ~A ⋅ B

### 💡 Truth Table

| A | B | Difference (D) | Borrow (Br) |
|---|---|----------------|-------------|
| 0 | 0 |       0        |      0      |
| 0 | 1 |       1        |      1      |
| 1 | 0 |       1        |      0      |
| 1 | 1 |       0        |      0      |

