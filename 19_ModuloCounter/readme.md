# Modulo-10 (Mod-10) Counter Verilog Project

## 📘 Brief Description

This project demonstrates a **4-bit synchronous Modulo-10 counter (0 to 9 counter)** with an asynchronous reset.  
- The counter increments on every rising edge of the clock.  
- When the value reaches **1001 (9)**, it rolls back to **0000 (0)**.  
- When `rst = 1`, the counter immediately resets to `0000`.

Mod-10 counters (also called **Decade Counters**) are commonly used in BCD systems, digital clocks, frequency dividers, and display drivers.

## 📁 Project Overview

This project implements a 4-bit synchronous counter that cycles through decimal values 0 to 9 (0000 to 1001).

## 🔢 Truth Table (Functional Behavior)

Since this is a **sequential circuit**, the truth table shows state transitions rather than direct input-output mapping.

### **Reset Functionality**

| rst | Action           |
| --- | ---------------- |
| 1   | count → 0000     |
| 0   | Normal operation |

### **Counting Behavior (rst = 0)**

| Current Count | Next Count                |
| ------------- | ------------------------- |
| 0000 (0)      | 0001 (1)                  |
| 0001 (1)      | 0010 (2)                  |
| 0010 (2)      | 0011 (3)                  |
| 0011 (3)      | 0100 (4)                  |
| 0100 (4)      | 0101 (5)                  |
| 0101 (5)      | 0110 (6)                  |
| 0110 (6)      | 0111 (7)                  |
| 0111 (7)      | 1000 (8)                  |
| 1000 (8)      | 1001 (9)                  |
| 1001 (9)      | 0000 (wrap to 0)          |

### **Overall Functional Summary**

| rst | count value | Next Value |
| --- | ----------- | ----------- |
| 1   | X           | 0000        |
| 0   | 1001        | 0000        |
| 0   | 0000–1000   | count + 1   |

---

## **Counter Sequence Example**

| Clock Cycle | Output (count) |
| ----------- | --------------- |
| 1           | 0000            |
| 2           | 0001            |
| 3           | 0010            |
| ...         | ...             |
| 9           | 1000            |
| 10          | 1001            |
| 11          | 0000 (wrap)     |

---

## 🧭 Applications of the Modulo-10 Counter

A Mod-10 counter is widely used in:

### ✔️ **1. Digital Clocks**
Used for second, minute, and hour digits (BCD format).

### ✔️ **2. BCD Counters**
Forms the basis of BCD arithmetic and BCD display systems.

### ✔️ **3. Seven-Segment Display Drivers**
Counts from 0 to 9 for digital meters.

### ✔️ **4. Frequency Division**
Dividing clock signals by 10.

### ✔️ **5. Timers and Event Counters**
Used for decade-based counting operations.

### ✔️ **6. Control and Sequencing Logic**
Useful in FSMs that require 0-to-9 iteration loops.

---

