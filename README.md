# VHDL Unintended Latch Bug

This repository demonstrates a common, yet subtle, bug in VHDL code: an unintended latch created by a missing assignment in a process's `else` branch.

The code in `bug.vhdl` shows an entity with a process that updates an internal signal based on a clock and reset.  The problem is that there is no explicit assignment to `internal_data` when `rst` is '0' and `clk` is not rising. This creates an implicit latch that retains the previous value of `internal_data` leading to unpredictable and potentially erroneous results.

The solution is shown in `bugSolution.vhdl` demonstrating a correct way to handle the process where explicit assignment of the signal ensures there are no unintended latches.