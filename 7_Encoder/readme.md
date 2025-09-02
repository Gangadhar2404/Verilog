# 4-to-2 Encoder in Verilog

This repository contains a **Verilog HDL implementation of a 4-to-2 encoder** along with a **testbench** for simulation.

---

## 📘 Description
An **encoder** is a combinational circuit that converts an active input line into a coded binary output.  
This design implements a **4-to-2 encoder**, which encodes one of the 4 active input signals into a 2-bit binary code.

**Inputs:**
- `in[3:0]` : 4 input lines (only one should be active at a time)

**Output:**
- `out[1:0]` : Encoded 2-bit binary output

---

## 💡 Features
- Implements a **4-to-2 priority encoder**.  
- Uses `case` statement inside an `always @(*)` block.  
- Includes a **testbench** for functional verification.  
- Synthesizable for FPGA/ASIC designs.  

---

## ⚡ Operation Table

| Input (`in`) | Output (`out`) |
|--------------|----------------|
| `0001`       | `00`           |
| `0010`       | `01`           |
| `0100`       | `10`           |
| `1000`       | `11`           |
| Others       | `xx` (undefined) |

---

## 🚀 Applications
- **Keyboard Encoders:** Convert key presses into binary codes.  
- **Digital Systems:** Reduce multiple input lines to fewer coded outputs.  
- **CPU Interrupt Systems:** Encode multiple interrupt requests.  
- **Communication Systems:** Used in address and data compression.  

---

## 📂 Directory Structure
