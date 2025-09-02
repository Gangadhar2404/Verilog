# 8-to-1 Multiplexer (MUX) using Hierarchical Design

This repository contains a **Verilog HDL implementation of an 8-to-1 multiplexer (MUX)** built hierarchically using multiple **2-to-1 mux modules**.

---

## 📘 Description
A **multiplexer (MUX)** selects one input from multiple inputs and forwards it to the output based on selection lines.  
In this design, the **8-to-1 MUX** is constructed using **seven 2-to-1 MUX instances**, demonstrating modular and hierarchical design.

**Inputs:**
- `a[7:0]` : 8 data inputs  
- `select[2:0]` : 3-bit selection line  

**Output:**
- `y` : Selected output  

---

## 💡 Features
- Hierarchical design using **2-to-1 MUX modules**.  
- Demonstrates **structural modeling** in Verilog.  
- Modular and reusable — the `mux` module can be reused in other projects.  
- Synthesizable for FPGA/ASIC designs.  

---

## ⚡ Operation Table

| Select (`select`) | Output (`y`) |
|-------------------|--------------|
| `000`             | `a[0]`       |
| `001`             | `a[1]`       |
| `010`             | `a[2]`       |
| `011`             | `a[3]`       |
| `100`             | `a[4]`       |
| `101`             | `a[5]`       |
| `110`             | `a[6]`       |
| `111`             | `a[7]`       |

---

## 🚀 Applications
- **Digital Systems:** Data routing between multiple signals.  
- **Communication Systems:** Channel selection in transceivers.  
- **Processor Design:** Operand or instruction selection.  
- **Reusable Logic:** Building larger multiplexers using smaller modules.  

---

## 📂 Directory Structure
