# 8-to-3 Priority Encoder in Verilog

This repository contains a **Verilog HDL implementation of an 8-to-3 priority encoder**.  
A priority encoder assigns the highest priority to the most significant active input and encodes its position into a binary output.

---

## 📘 Description
Unlike a normal encoder, a **priority encoder** handles situations where **multiple inputs are active at once**.  
The input with the **highest priority (MSB first)** gets encoded into the binary output.

**Inputs:**
- `in[7:0]` : 8 input lines (multiple can be active)

**Output:**
- `out[2:0]` : Encoded 3-bit binary output representing the highest priority active input

---

## 💡 Features
- Implements **8-to-3 priority encoding**.  
- Uses `casex` for handling "don't-care" conditions.  
- Default assignment ensures defined behavior for all cases.  
- Fully synthesizable design.  

---

## ⚡ Priority Table

| Input Pattern (`in`) | Output (`out`) | Priority |
|-----------------------|----------------|----------|
| `1XXXXXXX`           | `111`          | Highest  |
| `01XXXXXX`           | `110`          |          |
| `001XXXXX`           | `101`          |          |
| `0001XXXX`           | `100`          |          |
| `00001XXX`           | `011`          |          |
| `000001XX`           | `010`          |          |
| `0000001X`           | `001`          |          |
| `00000001`           | `000`          | Lowest   |
| `00000000`           | `xxx` (invalid)| —        |

---

## 🚀 Applications
- **Interrupt Handling:** Selects the highest-priority interrupt request in CPUs.  
- **Control Systems:** Resolves conflicts when multiple requests occur simultaneously.  
- **Digital Communication:** Used in arbitration and resource allocation.  
- **Data Compression Systems.**

---

## 📂 Directory Structure
