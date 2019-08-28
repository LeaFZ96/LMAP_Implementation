import matplotlib.pyplot as plt
import numpy as np

inputfile = open('data/flip_1_stride.out')

x = []
y = []
for line in inputfile:
    line_split = line.split()
    x.append(int(line_split[0]))
    y.append(int(line_split[1]))
inputfile.close()

y_sum = 3050417
y = np.array(y)
y = y / y_sum

#plt.figure(figsize=(6, 4))
plt.title('1 stride')
plt.bar(x=x, height=y[::-1])
plt.xticks(range(len(x)), x[::-1])
plt.xlim((26, 43.7))

plt.ylabel('Bit flip rate')
plt.xlabel('Bit position')

plt.show()