inputfile = open('data/statics.out')
outputfile = open('data/mid.out', 'w')

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

    delta_dict.append([delta, freq])
    
    total += freq

inputfile.close()

mid = total / 2
temp_num = 0

for i in delta_dict:
    if mid < 0:
        break
    
    outputfile.write(str(i[0]) + ' ' + str(i[1]) + '\n')

    mid -= i[1]

outputfile.close()