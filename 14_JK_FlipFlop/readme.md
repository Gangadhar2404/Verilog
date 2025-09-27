# **JK Flip-Flop (JKFF) in Verilog**

This project implements a **Synchronous JK Flip-Flop** using Verilog HDL.  
The **JK Flip-Flop** is a versatile sequential circuit that can function as a **Set-Reset (SR) Flip-Flop**, **Toggle Flip-Flop**, or **Latch**, depending on the inputs **J** and **K**.  
It updates its output **Q** on the **rising edge of the clock**.

---

## 📘 **Description**
- **Inputs:**
  - `j` → Set / Toggle input
  - `k` → Reset / Toggle input
  - `clk` → Clock signal (positive edge-triggered)

- **Outputs:**
  - `q` → Flip-Flop output
  - `qbar` → Complement of `q`

---

## 💡 **Features**
- **Edge-triggered** flip-flop design  
- Supports **Set**, **Reset**, **Hold**, and **Toggle** operations  
- Fully **synthesizable** for FPGA or ASIC implementations  
- Fundamental building block in **counters**, **registers**, and **state machines**

---

## ⚡ **Working Principle**
The JK Flip-Flop behavior is determined by the inputs **J** and **K**:

| **J** | **K** | **Next Q** | **Description**        |
|-------|-------|------------|------------------------|
| 0     | 0     | Q (No change) | Hold previous state   |
| 0     | 1     | 0          | Reset Q               |
| 1     | 0     | 1          | Set Q                 |
| 1     | 1     | ~Q (Toggle)| Toggle output Q       |

- **Complement Output:**  
  \[
  qbar = ~q
  \]

---

## ⚡ **Truth Table**

| **Clock Edge** | **J** | **K** | **Q (Next State)** | **Qbar** |
|----------------|-------|-------|-------------------|----------|
| ↑ (Rising edge)| 0     | 0     | Hold              | Complement of Q |
| ↑              | 0     | 1     | 0                 | 1 |
| ↑              | 1     | 0     | 1                 | 0 |
| ↑              | 1     | 1     | Toggle (~Q)       | Complement of Q |

---

## 🧪 **Simulation Flow**
1. **J=0, K=0:** Output **holds** its previous value on the rising edge of the clock.  
2. **J=0, K=1:** Output **resets** to `0`.  
3. **J=1, K=0:** Output **sets** to `1`.  
4. **J=1, K=1:** Output **toggles** between `0` and `1` on each rising clock edge.

---

## 🚀 **Applications**
- **Counters** (Binary / Decade / Mod-n counters)  
- **Registers** and **memory elements**  
- **Frequency dividers**  
- **Finite State Machines (FSMs)**  
- General **synchronous sequential circuits**

---

## 📂 **Project Structure**
```
JK_FlipFlop_Project/
│
├── JKFF.v           # Main JK Flip-Flop design file
├── JKFF_TB.v        # Testbench for simulation
└── README.md        # Documentation
```

---

## 🛠 **Tools Used**
- **Simulation Tool:** ModelSim / QuestaSim / Vivado  
- **HDL Language:** Verilog  
- **Target Hardware:** FPGA / ASIC prototyping boards  

---

## 📊 **Expected Simulation Output**
| **Time (ns)** | **J** | **K** | **Q** | **Qbar** | **Description**       |
|---------------|-------|-------|-------|----------|-----------------------|
| 0             | 0     | 1     | 0     | 1        | Reset Q               |
| 10            | 0     | 0     | 0     | 1        | Hold                  |
| 20            | 1     | 0     | 1     | 0        | Set Q                 |
| 30            | 1     | 1     | 0     | 1        | Toggle Q              |

---

## 📖 **Conclusion**
The **JK Flip-Flop** is a highly versatile sequential element.  
It can function as a **set-reset**, **toggle**, or **hold** flip-flop, making it widely used in **counters**, **frequency dividers**, and **state machines**.  
This project demonstrates the **design, simulation, and behavior** of a JK Flip-Flop in digital logic circuits.
