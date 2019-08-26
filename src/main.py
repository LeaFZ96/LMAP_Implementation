import torch
import torch.nn as nn
from model import LSTM
from dataset import CacheDataset
from train import train

batch_size = 64
embedding_dim = 128
hidden_dim = 16
delta_size = 90856
pc_size = 250
out_size = 90856
epoch_num = 50
lr = 0.001

path = 'data/delta_cut.out'


def main():
    model = LSTM(embedding_dim, hidden_dim, delta_size, pc_size, out_size)
    model = model.cuda()

    optimizer = torch.optim.Adam(model.parameters(), lr)

    criterion = nn.CrossEntropyLoss().cuda()

    print('Start reading data')
    train_dataset = CacheDataset(path)
    train_loader = torch.utils.data.DataLoader(
        train_dataset, batch_size=batch_size)
    print('Finish reading data')

    for epoch in range(epoch_num):

        train(train_loader, model, criterion, optimizer, epoch, delta_size)


if __name__ == '__main__':
    main()