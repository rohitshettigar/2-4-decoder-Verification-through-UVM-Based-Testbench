# 2-4-decoder-Verification-through-UVM-Based-Testbench

---

## Abstract

This project presents a detailed verification of a 2:4 decoder using UVM (Universal Verification Methodology). UVM components like agent, monitor, scoreboard, and driver are used to automate test generation, manage transactions, and ensure high coverage. The goal is to validate the functional correctness of the decoder under different input conditions using a reusable and scalable testbench.

---

##  Introduction

Verification is critical in digital circuit design. A **2:4 decoder** converts 2-bit binary input to one of four output lines. This project uses **UVM** to build an efficient, modular, and reusable testbench for validating the decoder functionality with improved coverage and automation.

---

##  Implementation Details

### Tools and Platform
- Verilog/SystemVerilog
- UVM (Universal Verification Methodology)
- EDA Playground
- GTKWave (for waveform viewing)

###  Source Files (`src/`)
- `decoder.sv` – Design under verification (DUT)
- `interface.sv` – Defines DUT connections
- `transaction.sv` – Input/output data class
- `generator.sv` – Generates random inputs
- `driver.sv` – Sends inputs to DUT
- `monitor.sv` – Observes outputs
- `scoreboard.sv` – Compares expected vs actual
- `agent.sv` – Binds monitor, driver, generator
- `env.sv` – Top-level test environment
- `base_test.sv` – Test scenario setup
- `top_tb.sv` – Testbench instantiation

---

##  Results and Discussion

The decoder was successfully verified for all input combinations (00 to 11). Simulation waveforms confirm correct output behavior. UVM helped reduce verification time and improved coverage of edge cases.

 **Waveform Example**  
![Waveform](outputs/waveform.png)

---

##  Conclusion

The project demonstrates that UVM significantly improves verification quality over traditional testbenches. It supports reuse, modularity, and automated stimulus generation. The 2:4 decoder was verified to perform as expected using a structured UVM approach.

---


