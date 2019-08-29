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
epoch_num = 2
lr = 0.001

path = 'data/delta_cut.out'

def main():

    print('Start reading data')
    train_dataset = CacheDataset(path)
    train_loader = torch.utils.data.DataLoader(train_dataset, batch_size=batch_size)
    print('Finish reading data')

    delta_size = train_dataset.delta_dict.get_len()
    pc_size = train_dataset.pc_dict.get_len()

    model = LSTM(embedding_dim, hidden_dim, delta_size, pc_size, delta_size)
    model = model.cuda()

    optimizer = torch.optim.Adam(model.parameters(), lr)

    criterion = nn.CrossEntropyLoss().cuda()

    for epoch in range(epoch_num):

        train(train_loader, model, criterion, optimizer, epoch, delta_size)

    output_embedding(model, train_loader)

    
def output_embedding(model, train_loader):
    outputfile = open('data/embedding.out', 'w')
    for i, (pc, delta) in enumerate(train_loader):
        pc = pc.cuda()
        delta = delta.cuda()

        model.eval()

        pc_embeds = model.pc_embeddings(pc.long())
        delta_embeds = model.delta_embeddings(delta.long())

        embeds = torch.cat([delta_embeds, pc_embeds], 1)

        for k in embeds.tolist():
            for j in k:
                outputfile.write('%s ' % j)
            outputfile.write('\n')

        if i % 300 == 0:
            print('[{}/{}]'.format(i, len(train_loader)))

    outputfile.close()


if __name__ == '__main__':
    main()