import matplotlib.pyplot as plt

inputfile = open('data/tsne_2_stride.out')

x = []
y = []
for line in inputfile:
    line_split = line.split()
    x.append(float(line_split[0]))
    y.append(float(line_split[1]))
inputfile.close()



plt.figure(figsize=(8, 8))

plt.scatter(x, y, marker='o', s=15, edgecolors='black')

'''
for i in range(X_norm.shape[0]):
    plt.text(X_norm[i, 0], X_norm[i, 1], str(y[i]), color=plt.cm.Set1(y[i]), 
             fontdict={'weight': 'bold', 'size': 9})
'''

plt.xticks()
plt.yticks()
plt.title('t-SNE of 1 stride (10k points)')

plt.show()