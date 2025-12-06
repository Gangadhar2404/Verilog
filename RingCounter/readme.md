# Ring Counter Verilog Project

## 📘 Brief Description

This project demonstrates a **4-bit synchronous Ring Counter**, also known as a circulating shift register.  
- Only **one bit is HIGH** at a time.  
- On each rising edge of the clock, the HIGH bit shifts left.  
- The MSB wraps back into the LSB, forming a continuous “ring”.  
- When `rst = 1`, the counter initializes to **0001**.

Ring counters are used in sequencers, LED patterns, timing circuits, and one-hot state machines.

---

## 📁 Project Overview

The 4-bit Ring Counter cycles through the following states:

**0001 → 0010 → 0100 → 1000 → 0001 → ...**

---

## 🔢 Truth Table (State Transitions)

### Reset Functionality

| rst | Action        |
| --- | ------------- |
| 1   | count → 0001  |
| 0   | Normal shift  |

---

### Counting / Shifting Behavior (rst = 0)

| Current Count | Next Count |
| ------------- | ---------- |
| 0001          | 0010       |
| 0010          | 0100       |
| 0100          | 1000       |
| 1000          | 0001       |

---

### Overall Functional Summary

| rst | Current Count | Next Value |
| --- | ------------- | ---------- |
| 1   | X             | 0001       |
| 0   | 0001          | 0010       |
| 0   | 0010          | 0100       |
| 0   | 0100          | 1000       |
| 0   | 1000          | 0001       |

---

## 🔄 Counter Sequence Example

| Clock Cycle | Output (count) |
| ----------- | -------------- |
| 1           | 0001           |
| 2           | 0010           |
| 3           | 0100           |
| 4           | 1000           |
| 5           | 0001           |
| ...         | Repeats        |

---

## 🧭 Applications of the Ring Counter

### ✔️ 1. LED Chaser / Running Light Patterns  
### ✔️ 2. Sequence Generators  
### ✔️ 3. Timing and Control Circuits  
### ✔️ 4. One-Hot FSM Implementations  
### ✔️ 5. Stepper Motor Control  
### ✔️ 6. Pattern Generation for Testing  

---
