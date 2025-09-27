# **D Flip-Flop (DFF) in Verilog**

This project implements a **Synchronous D Flip-Flop** using Verilog HDL.  
The **D Flip-Flop** is one of the most fundamental sequential logic elements, commonly used for **data storage**, **registers**, and **state machines**.  
It captures the value of the **D input** on the **rising edge of the clock** and holds it until the next clock edge.

---

## 📘 **Description**
- **Inputs:**
  - `d` → Data input
  - `clk` → Clock signal (positive edge-triggered)

- **Outputs:**
  - `q` → Output (stored value)
  - `qbar` → Complement of `q`

---

## 💡 **Features**
- **Edge-triggered** design that updates only on the **rising edge of the clock**  
- Simple and fully **synthesizable**  
- Ideal for **registers**, **memory elements**, and **pipelining** in digital circuits  
- Fundamental building block for **sequential logic design**

---

## ⚡ **Working Principle**
The **D Flip-Flop** transfers the input `D` to the output `Q` on every **rising edge of the clock**.

| **Clock Edge** | **D** | **Q (Next State)** | **Description**       |
|----------------|-------|--------------------|-----------------------|
| ↑ (Rising edge)| 0     | 0                  | Reset / Low stored    |
| ↑ (Rising edge)| 1     | 1                  | Set / High stored     |

- **Complement Output:**  
  \[
  qbar = ~q
  \]

---

## ⚡ **Truth Table**

| **Clock Edge** | **D** | **Q (Next State)** | **Qbar** |
|----------------|-------|--------------------|----------|
| ↑              | 0     | 0                  | 1 |
| ↑              | 1     | 1                  | 0 |

---

## 🧪 **Simulation Flow**
1. **D = 0:** On the rising edge of the clock, `Q` becomes **0** and `Qbar` becomes **1**.  
2. **D = 1:** On the rising edge of the clock, `Q` becomes **1** and `Qbar` becomes **0**.  
3. Between clock edges, the output **holds its value**, acting as a storage element.

---

## 🚀 **Applications**
- **Data storage elements** (Registers, Latches, Memory blocks)  
- **Pipeline stages** in CPUs and digital circuits  
- **Finite State Machines (FSMs)**  
- **Counters** and **Timers**  
- **Synchronous logic design**

---

## 📂 **Project Structure**
```
D_FlipFlop_Project/
│
├── dflipflop.v        # Main D Flip-Flop design file
├── dflipfloptb.v       # Testbench for simulation
└── README.md           # Documentation
```

---

## 🛠 **Tools Used**
- **Simulation Tool:** ModelSim / QuestaSim / Vivado  
- **HDL Language:** Verilog  
- **Target Hardware:** FPGA / ASIC prototyping boards  

---

## 📊 **Expected Simulation Output**
| **Time (ns)** | **D** | **Q** | **Qbar** | **Description**       |
|---------------|-------|-------|----------|-----------------------|
| 0             | 0     | 0     | 1        | Initial state         |
| 10            | 1     | 1     | 0        | Rising edge → Q = 1   |
| 20            | 0     | 0     | 1        | Rising edge → Q = 0   |

---

## 📖 **Conclusion**
The **D Flip-Flop** is a fundamental building block in digital electronics.  
It provides a reliable way to **store and transfer data** synchronously with the clock signal.  
This project demonstrates the design, behavior, and simulation of a D Flip-Flop, forming a foundation for **registers**, **counters**, and **advanced sequential circuits**.
