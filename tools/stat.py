inputfile = open('data/deltas.out')
outputfile = open('data/statics.out', 'w')

line = inputfile.readline()

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

inputfile.close()

print('Start writing')

delta_sorted = sorted(delta_dict.items(), key=lambda item:item[1], reverse=True)
pc_sorted = sorted(pc_dict.items(), key=lambda item:item[1], reverse=True)


outputfile.write('pc: (' + str(len(pc_sorted)) + ')\n')
for i in pc_sorted:
    outputfile.write(str(i) + '\n')

outputfile.write('delta: (' + str(len(delta_sorted)) + ')\n')
for i in delta_sorted:
    outputfile.write(str(i) + '\n')

outputfile.close()