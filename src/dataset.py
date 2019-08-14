import torch
from torch.utils.data import Dataset

class CacheDataset(Dataset):
    def __init__(self, path):
        self.pc_list = []
        self.delta_list = []
        with open(path, 'r') as inputfile:
            for line in inputfile:
                pc, addr, delta = line.split()
                self.pc_list.append(pc)
                self.delta_list.append(delta)
        
    def __len__(self):
        return len(self.pc_list)

    def __getitem__(self, idx):
        pc = self.pc_list[idx]
        delta = self.delta_list[idx]
        return pc, delta

if __name__ == '__main__':
    path = 'data/deltas.out'
    print('start read')
    data = CacheDataset(path)
    print('finish read')

    print(data.__len__())
    print(data.__getitem__(6))