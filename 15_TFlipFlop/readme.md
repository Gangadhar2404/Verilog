# **T Flip-Flop (TFF) in Verilog**

This project implements a **Synchronous T Flip-Flop** using Verilog HDL.  
The **T Flip-Flop** is a fundamental **sequential circuit** widely used in **counters**, **registers**, and **digital control systems**. It toggles its output **Q** whenever the input **T** is high (`1`) and the clock triggers.

---

## 📘 **Description**
- **Inputs:**
  - `clk` → Clock signal (positive edge-triggered)
  - `t` → Toggle input
- **Outputs:**
  - `q` → Flip-Flop output
  - `qbar` → Complement of output `q`

---

## 💡 **Features**
- **Edge-triggered** toggle flip-flop design  
- Acts as a **binary counter** when connected in sequence  
- Fully **synthesizable** for FPGA and ASIC designs  
- Efficient for **state machine design** and **frequency division**

---

## ⚡ **Working Principle**
The T Flip-Flop toggles its output `Q` whenever the **T input** is high on the **positive edge of the clock**.

| **T** | **Next Q** | **Description**        |
|-------|------------|------------------------|
| 0     | Q (No change) | Hold previous state   |
| 1     | ~Q (Toggle)   | Output toggles state |

- **Complement Output:**  
  \[
  qbar = ~q
  \]

---

## ⚡ **Truth Table**

| **Clock (Edge)** | **T** | **Q (Next State)** | **Qbar** |
|-------------------|-------|--------------------|----------|
| ↑ (Rising edge)   | 0     | No change          | Complement of Q |
| ↑ (Rising edge)   | 1     | Toggle (~Q)        | Complement of Q |

---

## 🧪 **Simulation Flow**
1. **T = 0:** Output remains **unchanged** on the clock edge.  
2. **T = 1:** Output **toggles** between `0` and `1` on each rising edge of the clock.  
3. **Qbar** always remains the **inverse** of `Q`.  

---

## 🚀 **Applications**
- **Binary counters**  
- **Frequency division circuits** (toggle every clock cycle)  
- **State machine designs**  
- **Control circuits**  
- Fundamental building block for **registers** and **counters**

---

## 📂 **Project Structure**
```
T_FlipFlop_Project/
│
├── TFF.v           # Main T Flip-Flop design file
├── TFF_tb.v        # Testbench for simulation
└── README.md       # Documentation
```

---

## 🛠 **Tools Used**
- **Simulation Tool:** ModelSim / QuestaSim / Vivado  
- **HDL Language:** Verilog  
- **Target Hardware:** FPGA / ASIC prototyping boards  

---

## 📊 **Expected Simulation Output**
| **Time (ns)** | **T** | **Q** | **Qbar** | **Description**       |
|---------------|-------|-------|----------|-----------------------|
| 0             | 0     | 0     | 1        | Initial state (Hold)  |
| 10            | 1     | 1     | 0        | Toggle to 1           |
| 20            | 1     | 0     | 1        | Toggle to 0           |
| 30            | 1     | 1     | 0        | Toggle to 1           |

---

## 📖 **Conclusion**
The **T Flip-Flop** is an essential sequential component widely used in **counters**, **frequency dividers**, and **digital systems**.  
This project demonstrates the design, simulation, and real-time behavior of a T Flip-Flop, forming a foundation for understanding **complex synchronous circuits**.
