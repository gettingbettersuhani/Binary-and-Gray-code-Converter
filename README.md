Binary ↔ Gray Code Converter (Verilog HDL)

📌 Project Overview
This project implements a Binary to Gray and Gray to Binary code converter using Verilog HDL.
Both conversions are integrated into a single, parameterized module, controlled by a mode input, making the design compact, reusable, and efficient.

The design was developed, simulated, and implemented using Xilinx Vivado, with full verification through testbench and waveform analysis.

⚙️ Features
Single module supporting both conversions
Mode-based operation:
mode = 0 → Binary to Gray
mode = 1 → Gray to Binary
Parameterized bit-width (N) for scalability
Pure combinational logic (no clock dependency)
Clean and readable RTL code

🧠 Design Logic
Binary to Gray Conversion: 
Gray=Binary⊕(Binary>>1)

Gray to Binary Conversion
MSB remains the same
Each lower bit is obtained by XORing the previous binary bit with the current gray bit

🧪 Verification
A dedicated testbench validates both operating modes
Multiple input patterns tested
Functional correctness verified using Vivado waveform viewer

🛠 Tools Used
Verilog HDL
Xilinx Vivado (RTL Simulation, Synthesis & Implementation)
RTL schematic, power, and device utilization analysis
