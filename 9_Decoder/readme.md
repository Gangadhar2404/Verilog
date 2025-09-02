# 3-to-8 Decoder in Verilog

This project implements a **3-to-8 line decoder** using Verilog HDL.  
A decoder activates **exactly one output line** corresponding to the binary input value.

---

## 📘 Description
- **Input:** `in[2:0]` → 3-bit input (select line)  
- **Output:** `out[7:0]` → 8 output lines (only one active at a time)  

This decoder maps a **3-bit input** into one of **8 active outputs**.

---

## 💡 Features
- Implemented using a **`case` statement**  
- One-hot output encoding  
- Includes a `default` case for invalid/unknown inputs  
- Fully synthesizable for FPGA/ASIC  

---

## ⚡ Truth Table

| Input (`in`) | Output (`out`)      |
|--------------|---------------------|
| `000`        | `00000001`          |
| `001`        | `00000010`          |
| `010`        | `00000100`          |
| `011`        | `00001000`          |
| `100`        | `00010000`          |
| `101`        | `00100000`          |
| `110`        | `01000000`          |
| `111`        | `10000000`          |

---

## 🚀 Applications
- **Memory addressing** (selecting one memory word)  
- **Instruction decoding** in processors  
- **I/O selection** in digital systems  
- **Multiplexer control**  

---

## 📂 Directory Structure
