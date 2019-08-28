dict_file = open('data/num.out')

delta_dict = []
for line in dict_file:
    delta = line.split()[0]
    delta_dict.append(delta)

dict_file.close()

inputfile = open('data/deltas.out')
outputfile = open('data/delta_cut.out', 'w')

for line in inputfile:
    delta = line.split()[2]
    if delta in delta_dict:
        outputfile.write(line)

inputfile.close()
outputfile.close()