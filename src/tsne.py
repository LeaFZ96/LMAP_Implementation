import numpy as np
from MulticoreTSNE import MulticoreTSNE as TSNE

def tsne_f():

    inputfile = open('data/select_2_stride.out')

    print('Strat reading data')
    X = []
    for line in inputfile:
        line_list = line.split()
        temp_list = []
        for i in line_list:
            temp_list.append(float(i))
        X.append(temp_list)
    print('Finish reading data')

    X = np.array(X)
    
    print('Start fitting')
    tsne = TSNE(n_jobs=20)
    X_tsne = tsne.fit_transform(X)
    
    print("Org data dimension is {}. Embedded data dimension is {}".format(X.shape[-1], X_tsne.shape[-1]))

    x_min, x_max = X_tsne.min(0), X_tsne.max(0)
    X_norm = (X_tsne - x_min) / (x_max - x_min)

    print('Start writting')
    outputfile = open('data/tsne_2_stride.out', 'w')

    j = 0
    for i in X_norm:
        outputfile.write('{} {}\n'.format(i[0], i[1]))
        if j % 300 == 0:
            print('[{}/{}]'.format(j, len(X_norm)))
        j += 1


if __name__ == '__main__':
    tsne_f()