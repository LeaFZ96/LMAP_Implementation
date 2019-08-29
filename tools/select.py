inputfile = open('data/embedding_2_stride.out')
outputfile = open('data/select_2_stride.out', 'w')

i = 0
for line in inputfile:
    if i % 2000 == 0:
        outputfile.write(line)
    i += 1

inputfile.close()
outputfile.close()