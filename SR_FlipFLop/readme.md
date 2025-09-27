# **SR Flip-Flop (SRFF) in Verilog**

This project implements a **Synchronous SR Flip-Flop** using Verilog HDL.  
An SR Flip-Flop is a **basic sequential circuit** used to **store one bit of data**, updating its state on the **positive edge of the clock**.

---

## 📘 **Description**
- **Inputs:**
  - `s` → Set input  
  - `r` → Reset input  
  - `clk` → Clock signal (positive edge-triggered)
- **Outputs:**
  - `q` → Output
  - `qbar` → Complement of output

---

## 💡 **Features**
- Synchronous design with clock edge triggering  
- Supports **Set**, **Reset**, **Hold**, and **Invalid** states  
- Fully synthesizable and simple to simulate  
- Demonstrates fundamental sequential circuit behavior  

---

## ⚡ **Working Principle**
The SR Flip-Flop operates based on the inputs **S (Set)** and **R (Reset)** with respect to the **clock signal**.

| **S** | **R** | **Next Q** | **Description**      |
|-------|-------|------------|----------------------|
| 0     | 0     | No Change  | **Hold** previous state |
| 1     | 0     | 1          | **Set** Q to 1 |
| 0     | 1     | 0          | **Reset** Q to 0 |
| 1     | 1     | X (Invalid)| **Invalid condition** |

- **Complement Output:**  
  \[
  qbar = ~q
  \]

---

## ⚡ **Truth Table**

| **S** | **R** | **Q (Next)** | **Qbar** |
|-------|-------|--------------|----------|
| 0     | 0     | Hold         | Complement of Q |
| 1     | 0     | 1            | 0 |
| 0     | 1     | 0            | 1 |
| 1     | 1     | X            | X |

---

## 🧪 **Simulation Flow**
1. **Set (S=1, R=0):** Output `Q` becomes **1**, and `Qbar` becomes **0**.  
2. **Hold (S=0, R=0):** Output **retains** its previous state.  
3. **Reset (S=0, R=1):** Output `Q` becomes **0**, and `Qbar` becomes **1**.  
4. **Invalid (S=1, R=1):** Both outputs become **undefined (X)**.

---

## 🚀 **Applications**
- **Data storage** (1-bit memory cell)  
- **Control circuits** in sequential logic  
- Building block for **D Flip-Flops**, **JK Flip-Flops**, and registers  
- **Finite State Machines (FSMs)**  
- Used in **latches**, **counters**, and timing circuits

---

## 📂 **Project Structure**
```
SR_FlipFlop_Project/
│
├── SRFF.v           # Main SR Flip-Flop design file
├── SRFF_tb.v        # Testbench for simulation
└── README.md        # Documentation
```

---

## 🛠 **Tools Used**
- **Simulation Tool:** ModelSim / QuestaSim / Vivado  
- **HDL Language:** Verilog  
- **Target Hardware:** FPGA / ASIC prototyping boards  

---

## 📊 **Expected Simulation Output**
| **Time (ns)** | **S** | **R** | **Q** | **Qbar** | **Description**      |
|---------------|-------|-------|-------|----------|----------------------|
| 0             | 1     | 0     | 1     | 0        | **Set** Q to 1       |
| 10            | 0     | 0     | 1     | 0        | **Hold** previous Q  |
| 20            | 0     | 1     | 0     | 1        | **Reset** Q to 0     |
| 30            | 0     | 0     | 0     | 1        | **Hold** previous Q  |
| 40            | 1     | 1     | X     | X        | **Invalid condition** |

---

## 📖 **Conclusion**
The **SR Flip-Flop** is a fundamental building block in **digital electronics**, forming the basis for more complex storage elements like **D Flip-Flops** and **registers**.  
This project demonstrates the design, simulation, and behavior of an SR Flip-Flop, making it an essential learning exercise for sequential circuit design.
