# Segmentation Fault in Assembly Code

This repository demonstrates a common error in assembly programming: accessing memory outside of allocated bounds.  The `bug.asm` file contains the erroneous code, while `bugSolution.asm` provides a corrected version.

The issue stems from the lack of checks to ensure that memory access is within the program's allocated space.  Improper register values can easily lead to segmentation faults.

The solution implements bounds checking to prevent this issue and increase the robustness of the code.