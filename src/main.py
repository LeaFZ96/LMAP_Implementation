import torch
import torch.nn as nn
from model import LSTM
from dataset import CacheDataset
from train import train

batch_size = 65
window_size = 1
embedding_dim = 128
hidden_dim = 16
epoch_num = 1
lr = 0.001

path = 'data/delta_cut.out'

def main():

    print('Start reading data')
    train_dataset = CacheDataset(path, window_size)
    train_loader = torch.utils.data.DataLoader(train_dataset, batch_size=batch_size, shuffle=True)
    print('Finish reading data')

    delta_size = train_dataset.delta_dict.get_len()
    pc_size = train_dataset.pc_dict.get_len()

    model = LSTM(embedding_dim, hidden_dim, delta_size, pc_size, delta_size)
    model = model.cuda()

    optimizer = torch.optim.Adam(model.parameters(), lr)

    criterion = nn.CrossEntropyLoss().cuda()

    for epoch in range(epoch_num):

        train(train_loader, model, criterion, optimizer, epoch, delta_size)

    output_embedding(model, train_loader, train_dataset)

    
def output_embedding(model, train_loader, train_dataset):
    outputfile = open('data/embedding.out', 'w')
    for i, (pc, delta) in enumerate(train_loader):
        pc = pc.cuda()
        delta = delta.cuda()

        model.eval()

        pc_embeds = model.pc_embeddings(pc.long())
        delta_embeds = model.delta_embeddings(delta.long())

        embeds = torch.cat([delta_embeds, pc_embeds], 1)

        for m, k in enumerate(embeds.tolist()):
            outputfile.write(str(train_dataset.re_pc_dict[pc[m].tolist()[0]]) + ' ')
            for j in k[0]:
                outputfile.write('%s ' % j)
            outputfile.write('\n')

        if i % 300 == 0:
            print('[{}/{}]'.format(i, len(train_loader)))

    outputfile.close()


if __name__ == '__main__':
    main()