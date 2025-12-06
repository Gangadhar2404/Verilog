# Up-Down Counter Verilog Project

## 📘 Brief Description

This project demonstrates a **4-bit synchronous up–down counter** with an asynchronous reset.  
- When `updown = 1`, the counter increments its value.  
- When `updown = 0`, the counter decrements its value.  
- When `rst = 1`, the counter immediately resets to `0000`.  

Up–Down counters are widely used in digital circuits for bidirectional counting, encoder/decoder interfaces, timers, and control systems.

## 📁 Project Overview

This project contains a 4-bit synchronous up–down counter with asynchronous reset and mode select (`updown`).

## 🔢 Truth Table (Functional Behavior)

Since the counter is a **sequential circuit**, the truth table represents behavioral activity.

### **Reset Functionality**

| rst | Action            |
| --- | ----------------- |
| 1   | count → 0000      |
| 0   | Normal operation  |

### **Mode Control (updown)**

| updown | Operation       |
| ------ | ---------------- |
| 1      | Increment (+1)   |
| 0      | Decrement (−1)   |

### **Overall Functional Behavior**

| rst | updown | Action                |
| --- | ------ | --------------------- |
| 1   |   X    | count → 0000 (reset)  |
| 0   |   1    | count → count + 1     |
| 0   |   0    | count → count - 1     |

---

## **Counter Sequence Example (rst = 0)**

### When `updown = 1` (Counting Up)

| Clock Cycle | Output (count) |
| ----------- | --------------- |
| 1           | 0000            |
| 2           | 0001            |
| 3           | 0010            |
| ...         | ...             |

### When `updown = 0` (Counting Down)

| Clock Cycle | Output (count) |
| ----------- | --------------- |
| 1           | 0101            |
| 2           | 0100            |
| 3           | 0011            |
| ...         | ...             |

Below is the conceptual behavior based on mode and reset inputs:

### **Mode-Based Sequence Summary**

| Clock Edge | updown | Output Transition       |
| ---------- | ------ | ------------------------ |
| ↑          | 1      | count → count + 1        |
| ↑          | 0      | count → count - 1        |
| ↑ (rst=1)  | X      | count → 0000 (reset)     |

---

## 🧭 Applications of the Up-Down Counter

A 4-bit up–down counter is used in various digital and VLSI applications, including:

### ✔️ **1. Bidirectional Event Counting**
Counting forward and backward in automation systems.

### ✔️ **2. Elevator Floor Controllers**
Up for going up, down for descending.

### ✔️ **3. Rotary Encoders / Position Tracking**
Used in robotics and motor control.

### ✔️ **4. Digital Timers and Delay Modules**
Switching between incrementing and decrementing time.

### ✔️ **5. Address Traversal in Memory**
Forward and reverse memory scanning.

### ✔️ **6. State Machine Control**
Bidirectional state transitions.

### ✔️ **7. PWM & Control Logic**
Used in DAC control, tracking, and modulation logic.

---


