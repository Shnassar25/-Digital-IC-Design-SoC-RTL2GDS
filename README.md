# 🚀 Complete ASIC/SoC Design Flow: From RTL to GDSII
### 💎 Digital IC Design & ASIC Diploma Final Project
**Instructor:** Eng. Ali El-Temsah  
**Author:** Shahd Mahmoud Abbas (*Electronics & Communications Engineering, Helwan University*)

---

## 📌 Executive Summary
This repository presents a fully verified, manufacture-ready, and silicon-proven **System-on-Chip (SoC)** design flow using the **TSMC 130nm (`scmetro_tsmc_cl013g_rvt`)** standard cell library. 

The flow encompasses the entire digital IC lifecycle: **Micro-architectural Specification ➔ RTL Logic Design ➔ Verification & Linting ➔ Logic Synthesis & STA ➔ Design for Testability (DFT) ➔ Formal Equivalence Verification (LEC) ➔ Place & Route (PNR) Physical Sign-off**.

---

## 🏗️ Chip Micro-Architecture & System Blocks

The top-level chip (`SYS_TOP`) integrates multiple hardware execution blocks coordinated by a central finite state machine:

```text
               +------------------------------------------------+
               |                  SYS_TOP                       |
               |                                                |
  Rx (Serial)  |  +------------+   +------------+   +--------+  |
-------------->|->|    UART    |-->| Async FIFO |-->| RegFile|  |
  Tx (Serial)  |  | Transceiver|   | Synchronizer  |--------+  |
<--------------|<--|            |   +------------+   |  ALU   |  |
               |  +------------+                    +--------+  |
               |         ^                                      |
               |         |------------ Control FSM -------------|
               +------------------------------------------------+

🧩 Sub-System Breakdown:
📡 UART Interface: Enables asynchronous serial communication for external data transfer.

⏳ Asynchronous FIFO: Facilitates safe Multi-Clock Domain Crossing (CDC) and data buffering.

📝 Register File: Holds active configuration control, operational parameters, and state status.

🧮 Arithmetic Logic Unit (ALU): Performs high-throughput data processing and logical execution.

🎮 Central Control FSM: Manages state routing, system synchronization, and datapath execution

🛠️ EDA Toolchain & Technology Flow
| Design Phase | Tool Standard | Technology Node / Standard |
| :--- | :--- | :--- |
| **RTL & Testbench** | Verilog HDL | SystemVerilog Standards |
| **Functional Simulation** | QuestaSim / ModelSim | IEEE Standard Verilog |
| **Linting & CDC Verification** | Synopsys SpyGlass | Structural Rule Checking |
| **Logic Synthesis & Timing** | Synopsys Design Compiler (DC) | **TSMC 130nm** (`scmetro_tsmc_cl013g_rvt`) |
| **Design for Testability** | Synopsys DFT Compiler | Scan Insertion & Fault Modeling |
| **Formal Logic Equivalence** | Synopsys Formality | Pre/Post-DFT/PNR Equivalence |
| **Physical Design (PNR)** | Innovus / IC Compiler | Floorplanning, CTS, & Routing |
