# Number Theory: Addition

In this lab, you’ve learned about One Hot and Binary state machines and how to build them.

## Rubric

| Item | Description | Value |
| ---- | ----------- | ----- |
| Summary Answers | Your writings about what you learned in this lab. | 25% |
| Question 1 | Your answers to the question | 25% |
| Question 2 | Your answers to the question | 25% |
| Question 3 | Your answers to the question | 25% |

## Name
Bryson Leatham, Tylor Sorenson

## Summary
  
  This lab covers finite state machines and how to implement them in digital logic using two different state encoding methods: one-hot and binary. Both approaches use combinational next-state logic and D flip-flops to advance through states on each clock cycle, and are implemented in Verilog on an FPGA.
  
## Lab Questions

### Compare and contrast One Hot and Binary encodings

  Both use D flip-flops and combinational next-state logic. One-hot uses one FF per state, so it requires more flip-flops but results in simpler combinational logic, while Binary uses ⌈log_2 N⌉ FFs and requires more complex next state logic.

  
### Which method did your team find easier, and why?

  The one-hot encoding seemed easier, as the Boolean logic for each state was simpler, even if there was more copy-pasting for the DFF’s and logic. It was easier to make a mistake when writing the logic in binary as well.


### In what conditions would you have to use one over the other? Think about resource utilization on the FPGA.

  You would use One-hots in situations where multiple FF’s do not overly use memory and faster performance from the simpler logic is more beneficial. Binary is more efficient and better for limited resources but requires more complex combinational logic, making it slower.
