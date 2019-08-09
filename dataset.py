import torch
from torch.utils.data import Dataset

class CacheDataset(Dataset):
    def __init__(self, path):
        inputfile = open(path)
        