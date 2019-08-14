inputfile = open('data/deltas.out')

line = inputfile.readline()

addr_dict = {}
pc_dict = {}
delta_dict = {}

print('Start reading data')
data_total = inputfile.readlines()
print('Finish reading data')

for line in data_total:
    line_split = line.split()
    pc = int(line_split[0])
    addr = int(line_split[1])
    delta = int(line_split[2])

    if delta_dict.__contains__(delta):
        delta_dict[delta] += 1
    else:
        delta_dict[delta] = 1

    if pc_dict.__contains__(pc):
        pc_dict[pc] += 1
    else:
        pc_dict[pc] = 1

    if addr_dict.__contains__(addr):
        addr_dict[addr] += 1
    else:
        addr_dict[addr] = 1

inputfile.close()

print('Start writing')

outputfile = open('data/delta_after.out', 'w')

for line in data_total:
    line_split = line.split()
    delta = int(line_split[2])
    
    if delta_dict[delta] >= 10:
        outputfile.write(line)

outputfile.close()

addr_sorted = sorted(addr_dict.items(), key=lambda item:item[1], reverse=True)
delta_sorted = sorted(delta_dict.items(), key=lambda item:item[1], reverse=True)
pc_sorted = sorted(pc_dict.items(), key=lambda item:item[1], reverse=True)

outputfile = open('data/statics.out', 'w')

outputfile.write('addr: (' + str(len(addr_sorted)) + ')\n')
for i in addr_sorted:
    outputfile.writelines(str(i) + '\n')

outputfile.write('pc: (' + str(len(pc_sorted)) + ')\n')
for i in pc_sorted:
    outputfile.write(str(i) + '\n')

outputfile.write('delta: (' + str(len(delta_sorted)) + ')\n')
for i in delta_sorted:
    outputfile.write(str(i) + '\n')

outputfile.close()