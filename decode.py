# decode and list state vector
# as transmitted by Chunk::Print.

import sys
import subprocess
import math

lines = sys.stdin.read().split('\n')
n = int(math.log2(len(lines)))
for index, line in enumerate(lines):
    if not line.strip(): continue

    result = subprocess.run(
        ['futil', '-d', line, '-p'],
        stdout=subprocess.PIPE,
    )

    ampl = float(result.stdout.decode('ascii').strip('\n'))
    prob = ampl ** 2

    state = bin(index)[2:].zfill(n)

    print(f"{prob:.4f} |{state}>")




