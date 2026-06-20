# decode and list state vector
# as transmitted by Chunk::Print.

import sys
import subprocess
import math

total = 0.0

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

    total += prob

    state = bin(index)[2:].zfill(n)

    if prob > 0.001:
        print(f"{prob:.4f} |{state}>")

print(f'\ntotal probl: {total}')




