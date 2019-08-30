inputfile = open('data/embedding.out')
outputfile = open('data/select.out', 'w')

i = 0
for line in inputfile:
    if i % 150 == 0:
        outputfile.write(line)
    i += 1

inputfile.close()
outputfile.close()