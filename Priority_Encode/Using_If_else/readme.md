# 8-to-3 Priority Encoder using If-Else in Verilog

This repository contains a **Verilog HDL implementation of an 8-to-3 priority encoder** using an `if-else` ladder.

---

## 📘 Description
A **priority encoder** outputs the binary code of the **highest-priority active input**.  
This version uses **if-else statements** to check inputs from MSB to LSB.

**Inputs:**
- `in[7:0]` : 8 input lines (multiple can be active)

**Output:**
- `out[2:0]` : Encoded 3-bit output of the highest-priority input

---

## 💡 Features
- 8-to-3 priority encoding using **if-else ladder**  
- Default assignment handles the **no-input-active** case  
- Simple and readable design for beginners  
- Fully synthesizable for FPGA/ASIC  

---

## ⚡ Priority Table

| Input (`in`) | Output (`out`) | Priority |
|---------------|----------------|----------|
| `1XXXXXXX`    | `111`          | Highest  |
| `01XXXXXX`    | `110`          |          |
| `001XXXXX`    | `101`          |          |
| `0001XXXX`    | `100`          |          |
| `00001XXX`    | `011`          |          |
| `000001XX`    | `010`          |          |
| `0000001X`    | `001`          |          |
| `00000001`    | `000`          | Lowest   |
| `00000000`    | `xxx`          | —        |

---

## 🚀 Applications
- **Interrupt Handling:** Resolves multiple simultaneous interrupt requests.  
- **Control Systems:** Ensures highest-priority request is serviced first.  
- **Digital Communication:** Arbitration between multiple sources.  
- **CPU Design:** Priority-based resource allocation.

---

## 📂 Directory Structure
