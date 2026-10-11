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
