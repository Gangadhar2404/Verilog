# 8-to-1 Multiplexer (MUX) using Case Statement

This repository contains a **Verilog HDL implementation of an 8-to-1 multiplexer (MUX)** using a `case` statement inside an `always` block.

---

## 📘 Description
A **multiplexer (MUX)** is a combinational circuit that selects one input from multiple inputs and forwards it to the output based on a **selection line**.  
This design implements an **8-to-1 MUX** using a `case` statement for clarity and readability.

**Inputs:**
- `i1, i2, i3, i4, i5, i6, i7, i8` : Data inputs  
- `s[2:0]` : 3-bit selection line  

**Output:**
- `y` : Selected output  

---

## 💡 Features
- Implements **8-to-1 MUX** functionality.  
- Uses `case` statement inside `always @(*)`.  
- Easy to extend for higher-order multiplexers.  
- Synthesizable for FPGA/ASIC designs.  

---

## ⚡ Operation Table

| Select (`s`) | Output (`y`) |
|--------------|--------------|
| `000`        | `i1`         |
| `001`        | `i2`         |
| `010`        | `i3`         |
| `011`        | `i4`         |
| `100`        | `i5`         |
| `101`        | `i6`         |
| `110`        | `i7`         |
| `111`        | `i8`         |

---

## 🚀 Applications
- **Data Routing:** Used in CPUs/GPUs to select data paths.  
- **Communication Systems:** Channel selection in transmitters/receivers.  
- **Control Systems:** Switch between different control signals.  
- **ALU Design:** Operand or operation selection in arithmetic logic units.  

---

