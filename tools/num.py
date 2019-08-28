inputfile = open('data/statics.out')
outputfile = open('data/num.out', 'w')

delta_dict = []
total = 0
flag = False

for line in inputfile:
    if line.__contains__('delta'):
        flag = True
        continue

    if not flag:
        continue

    temp = line.split()
    delta = int(temp[0][1:-1])
    freq = int(temp[1][:-1])

    if freq >= 10: 
        delta_dict.append([delta, freq])
    
inputfile.close()

for i in delta_dict:
    outputfile.write(str(i[0]) + ' ' + str(i[1]) + '\n')

outputfile.close()