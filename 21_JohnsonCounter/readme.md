# Johnson Counter Verilog Project

## 📘 Brief Description

This project demonstrates a **4-bit synchronous Johnson Counter** (also called a **Twisted Ring Counter**).  
- The counter shifts right on every rising edge of the clock.  
- The inverted LSB (least significant bit) is fed back into the MSB.  
- When `rst = 1`, the counter resets to `0000`.  

A 4-bit Johnson counter generates **8 unique states**, making it useful in sequence generation, pattern generation, and control logic.

## 📁 Project Overview

This project implements a 4-bit Johnson counter that cycles through a sequence of 8 states using a feedback inversion mechanism.

## 🔢 Truth Table (Functional Behavior)

Since this is a **sequential counter**, the truth table describes state transitions.

### **Reset Functionality**

| rst | Action        |
| --- | ------------- |
| 1   | count → 0000  |
| 0   | Normal shift  |

---

## **Johnson Counter Sequence (4-bit)**

The formula used is:

Next count = { ~count[0], count[3:1] }


This generates **8 valid states**:

| Step | Current State | Next State | Explanation                        |
|------|---------------|------------|------------------------------------|
| 1    | 0000          | 1000       | Insert NOT of LSB (0 → 1)          |
| 2    | 1000          | 1100       | Shift + feedback                   |
| 3    | 1100          | 1110       | Shift + feedback                   |
| 4    | 1110          | 1111       | Shift + feedback                   |
| 5    | 1111          | 0111       | Insert NOT of LSB (1 → 0)          |
| 6    | 0111          | 0011       | Shift + feedback                   |
| 7    | 0011          | 0001       | Shift + feedback                   |
| 8    | 0001          | 0000       | Shift + feedback (sequence repeats)|

**Total states:** 8  
**Type:** Non-binary, rotating sequence with inversion feedback.

---

## **Functional Summary**

| rst | Operation                                 |
|-----|-------------------------------------------|
| 1   | count → 0000 (reset)                      |
| 0   | Insert inverted LSB + shift right         |

### State Transition Rule

countₙ₊₁ = { ~count₀, count₃, count₂, count₁ }


---

## 🧭 Applications of the Johnson Counter

A Johnson counter is used in several digital and VLSI systems:

### ✔️ **1. Sequence Generators**
Generates predefined patterns without decoding logic.

### ✔️ **2. Ring Counter Enhancements**
Produces double the number of states of a normal ring counter.

### ✔️ **3. Digital Timing Circuits**
Used to create timing delays and phase-shifted outputs.

### ✔️ **4. Control Signals in FSMs**
Provides multi-step control sequences.

### ✔️ **5. LED Pattern Generators**
Suitable for running lights and pattern shifting.

### ✔️ **6. DAC/ADC Control Logic**
Used in hardware stepping and scanning operations.

### ✔️ **7. Addressing & Scanning Circuits**
Useful for multiplexed scanning and switching operations.

---

If you want, I can also prepare:

🔹 A combined README for **all counters so far**  
🔹 A block diagram or waveform explanation  
🔹 Ring counter README in same format  

Just tell me!
