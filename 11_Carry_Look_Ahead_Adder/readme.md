# 4-Bit Carry Look-Ahead Adder (CLA) in Verilog

This project implements a **4-bit Carry Look-Ahead Adder (CLA)** using Verilog HDL.  
Unlike a Ripple Carry Adder, the CLA reduces propagation delay by **precomputing carry signals**.

---

## 📘 Description
- **Inputs:**
  - `a[3:0]` → First 4-bit operand
  - `b[3:0]` → Second 4-bit operand
  - `cin`    → Input carry
- **Outputs:**
  - `sum[3:0]` → 4-bit sum
  - `cout`     → Final carry-out

The CLA uses **Generate (G)** and **Propagate (P)** logic to compute carry signals faster.

---

## 💡 Features
- 4-bit adder with carry look-ahead logic  
- Computes carry in **parallel**, reducing delay  
- Fully synthesizable and efficient for high-speed arithmetic circuits  
- Output sum is `a + b + cin`  

---

## ⚡ Working Principle
1. **Generate (G):** `g[i] = a[i] & b[i]` → Carry is generated at bit *i*.  
2. **Propagate (P):** `p[i] = a[i] ^ b[i]` → Carry is propagated through bit *i*.  
3. **Carry Calculation:**  c[0] = cin
c[1] = g[0] | (p[0] & c[0])
c[2] = g[1] | (p[1] & c[1])
c[3] = g[2] | (p[2] & c[2])
cout = g[3] | (p[3] & c[3])

4. **Sum Calculation:** `sum = p ^ c`

---

## ⚡ Truth Table (Example)

| a     | b     | cin | sum   | cout |
|-------|-------|-----|-------|------|
| 0101  | 0011  | 0   | 1000  | 0    |
| 1111  | 0001  | 0   | 0000  | 1    |
| 1010  | 0101  | 1   | 0000  | 1    |

---

## 🚀 Applications
- **High-speed arithmetic units** in processors  
- **ALUs (Arithmetic Logic Units)**  
- **Digital signal processors (DSPs)**  
- **Computer architecture** where fast addition is critical  

---



