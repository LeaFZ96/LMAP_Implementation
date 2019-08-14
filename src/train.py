import torch
from torch.utils.data import DataLoader
from dataset import CacheDataset

if __name__ == '__main__':
    path = 'data/deltas.out'
    print('Start reading data')
    datasets = CacheDataset(path)
    print('Finish reading data')
    train_loader = DataLoader(dataset=datasets, batch_size=64, num_workers=4)

    for epoch in range(2):
        for i, data in enumerate(train_loader):
            pc, delta = data
            print(epoch, i, pc, delta)

            if i == 5:
                break