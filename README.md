# QUB - QUantum Baabnq

Qub (pronounced /kjub/ like "cube") is a real-valued
quantum simulation framework written in [Baabnq](baabnq.github.io).

# Gate Set
This simulator implements an simple universal gate set:
- `Qub::Had` for the Hadamard gate.
- `Qub::Toff` for the Toffoli gate.
- `Qub::Not` for optional unconditional not.
- `Qub::CNot` for optional conditional not.
The `Qub::Not` and `Qub::CNot` gates are provided for
performance and convenience, as the set `{H, CCX}` itself
is already universal in the computational sense. 
(assuming the initial system state can be specified)

# Programs
- `prg/bell.baabnq` is a simple bell state preparation demonstration.
- `prg/toff-test.baabnq` is a Toffoli gate test.
- `prg/sort.baabnq` shows an application of grover algorithm to generate sorted bit patterns.

