# 4-to-2 Priority Encoder with Valid Signal in Verilog

This repository contains a **Verilog HDL implementation of a 4-to-2 priority encoder** with a **valid output**.  
It uses **continuous assignment (`?:` operator)** for compact and efficient design.

---

## 📘 Description
A **priority encoder** outputs the binary code of the **highest-priority active input**.  
This design includes an additional **valid signal** that indicates whether any input is active.

**Inputs:**
- `in[3:0]` : 4 input lines (multiple can be active)

**Outputs:**
- `out[1:0]` : Encoded 2-bit output of the highest-priority input  
- `valid`    : High (`1`) if at least one input is active  

---

## 💡 Features
- 4-to-2 encoding with **priority resolution**  
- Compact **ternary operator (`?:`) implementation**  
- `valid` signal indicates if input is non-zero  
- Synthesizable for FPGA/ASIC  

---

## ⚡ Priority Table

| Input (`in`) | Output (`out`) | Valid |
|---------------|----------------|-------|
| `1XXX`        | `11`           | 1     |
| `01XX`        | `10`           | 1     |
| `001X`        | `01`           | 1     |
| `0001`        | `00`           | 1     |
| `0000`        | `00`           | 0     |

---

## 🚀 Applications
- **Interrupt Controllers:** Handles multiple interrupt requests with priority.  
- **Digital Systems:** Arbitration between multiple requests.  
- **Processor Design:** Instruction decoding and control.  

---


