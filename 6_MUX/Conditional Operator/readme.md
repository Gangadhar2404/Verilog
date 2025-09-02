# 4-to-1 Multiplexer (MUX) using Ternary Operator

This repository contains a **Verilog HDL implementation of a 4-to-1 multiplexer (MUX)** using the **ternary operator (`?:`)**.

---

## 📘 Description
A **multiplexer (MUX)** selects one input from multiple inputs and forwards it to the output based on selection lines.  
This design implements a **4-to-1 MUX** in a **single-line assign statement** using the **ternary operator**, making it compact and efficient.

**Inputs:**
- `a, b, c, d` : 4 data inputs  
- `sel[1:0]` : 2-bit selection line  

**Output:**
- `out` : Selected output  

---

## 💡 Features
- Implements **4-to-1 MUX** in a **single assign statement**.  
- Uses **nested ternary (`?:`) operators** for compactness.  
- Very efficient for small-scale multiplexers.  
- Fully synthesizable for FPGA/ASIC designs.  

---

## ⚡ Operation Table

| Select (`sel`) | Output (`out`) |
|----------------|----------------|
| `00`           | `a`            |
| `01`           | `b`            |
| `10`           | `c`            |
| `11`           | `d`            |

---

## 🚀 Applications
- **Data Selection:** Choose between multiple inputs.  
- **Control Systems:** Route control signals efficiently.  
- **Processor/ALU Design:** Operand selection.  
- **Compact RTL Design:** Useful in small circuits for quick multiplexing.  

---

## 📂 Directory Structure
