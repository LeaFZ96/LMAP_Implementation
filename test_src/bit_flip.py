inputfile = open('data/result.out')

last_line = inputfile.readline()
last_addr = int(last_line[2])

flip_dict = {}
for i in range(50):
    flip_dict[i] = 0

for line in inputfile:
    line_list = line.split()
    addr = int(line_list[2])
    flip = str(bin(addr ^ last_addr))
    flip = flip[::-1]
    for i in range(len(flip)):
        if flip[i] == '1':
            flip_dict[i] += 1
    last_addr = addr

inputfile.close()

outputfile = open('data/flip.out', 'w')
for i in range(50):
    outputfile.write(str(i) + ' ' + str(flip_dict[i]) + '\n')
outputfile.close()

