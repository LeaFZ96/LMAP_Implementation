import torch
from torch.utils.data import Dataset
from utils import Dict

class CacheDataset(Dataset):
    def __init__(self, path, window_size):
        self.pc_list = []
        self.delta_list = []
        self.window = window_size

        self.pc_dict = Dict()
        self.delta_dict = Dict()
        self.re_pc_dict = {}

        with open(path, 'r') as inputfile:
            for line in inputfile:
                pc, addr, delta = line.split()
                pc_idx = self.pc_dict.get(int(pc))
                self.pc_list.append(pc_idx)
                self.re_pc_dict[pc_idx] = int(pc)
                self.delta_list.append(self.delta_dict.get(int(delta)))

        
    def __len__(self):
        return len(self.pc_list) - self.window

    def __getitem__(self, idx):
        pc = self.pc_list[idx : idx + self.window]
        delta = self.delta_list[idx : idx + self.window]
        pc = torch.tensor(pc)
        delta = torch.tensor(delta)
        return pc, delta

if __name__ == '__main__':
    path = 'data/deltas.out'
    print('start read')
    data = CacheDataset(path)
    print('finish read')

    print(data.__len__())
    print(data.__getitem__(6))