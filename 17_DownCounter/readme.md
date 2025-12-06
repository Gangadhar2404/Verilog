# Downcounter Verilog Project

## 📘 Brief Description

This project demonstrates a **4-bit synchronous downcounter** with an asynchronous reset.  
The counter decrements its value on every rising edge of the clock.  
If the reset signal is activated, the counter immediately loads `1111`.  
Downcounters are widely used in countdown timers, delay generators, state sequencing, and control applications.

## 📁 Project Overview

This project demonstrates a 4-bit synchronous downcounter with asynchronous reset.

## 🔢 Truth Table (Functional Behavior)

Since a counter is a **sequential circuit**, the truth table shows behavior rather than direct input-output mapping.

### **Reset Functionality**

| rst | Action                                      |
| --- | ------------------------------------------- |
| 1   | count → 1111 (reset)                        |
| 0   | count decrements on each positive clock edge |

### **Counter Sequence Example (rst = 0)**

| Clock Cycle | Output (count)     |
| ----------- | ------------------ |
| 1           | 1111               |
| 2           | 1110               |
| 3           | 1101               |
| 4           | 1100               |
| ...         | ...                |
| 15          | 0001               |
| 16          | 0000               |
| 17          | 1111 (wrap around) |

Below is the functional truth table representing how the counter behaves based on **clock** and **reset** inputs:

### **Reset Behavior**

| Reset (rst) | Output (count)                        |
| ----------- | ------------------------------------- |
| 1           | 1111 (Reset)                          |
| 0           | Previous count − 1 on each clock edge |

### **Counter Sequence Example (when rst = 0)**

| Clock Edge | Output (count)             |
| ---------- | -------------------------- |
| 1          | 1111 -> 1110               |
| 2          | 1110 -> 1101               |
| 3          | 1101 -> 1100               |
| ...        | ...                        |
| 15         | 0001 -> 0000               |
| 16         | 0000 -> 1111 (wrap around) |

**Note:** As a sequential circuit, the counter depends on previous states and clock edges.

## 🧭 Applications of the Downcounter

A 4-bit downcounter is used in various digital electronics and VLSI systems, including:

### ✔️ **1. Countdown Timers & Delay Circuits**

Used for timer control, watchdog timers, and delay generation.

### ✔️ **2. Control Logic in State Machines**

Helps sequence events in reverse order or count remaining cycles.

### ✔️ **3. Reverse Address Generation in Memory**

Useful for stack-like addressing or LIFO structures.

### ✔️ **4. PWM & Duty-cycle Modulation**

Downcounters are used to generate periodic control signals.

### ✔️ **5. Event/Pulse Countdown Measurement**

Counts remaining events in sensors, stepper motors, and measurement devices.

### ✔️ **6. Loop Control in Hardware Accelerators**

Used for controlling iteration loops in hardware algorithms.

---


